package GoogleAnalyticsMostPopular::Plugin;

use strict;
use warnings;

use LWP::UserAgent;
use Crypt::SSLeay;
use XML::Simple;


sub gamp_block {
    my ($ctx, $args, $cond) = @_;
    my $builder = $ctx->stash('builder');
    my $tokens  = $ctx->stash('tokens');
    my $res     = '';

    my $plugin = MT->component( 'GoogleAnalyticsMostPopular' );
    my $config = $plugin->get_config_hash('blog:' . $ctx->stash('blog_id') );

    # authenticate with the API to receive token
    my $token = _gaGetToken($config->{analytics_username}, $config->{analytics_password});

    if (!$token) {
        return MT->log('GAMP was unable to successfully retrieve a token. '
                        .'Check the specified username and password.');
    }
    else {
        my $profileid = $config->{analytics_profile_id};

        if (!$profileid) {
            return MT->log("GAMP doesn't appear to have a profile ID specified.");
        }

        # The returned results should fall between today and the "history" day.
        use DateTime;
        # Create today's date.
        my $dt = DateTime->now;
        my $end = $dt->ymd('-'); # Today's date
        # Get the history time, then subtract it to get the desired start date.
        $dt = DateTime->now->subtract( days => $config->{gamp_history} || '7' );
        my $start = $dt->ymd('-');

        # Follow this format to retrieve the most popular page views.
        # This is a recipe from the Data Feed Query Explorer:
        # http://ga-dev-tools.appspot.com/explorer/

        # https://www.google.com/analytics/feeds/data?ids=ga%3A20906740
        # &dimensions=ga%3ApagePath%2Cga%3ApageTitle&metrics=ga%3Apageviews
        # &sort=-ga%3Apageviews&start-date=2009-08-27&end-date=2009-09-10&max-results=50
        my $max = $config->{gamp_size_limit} * 10; # Big enough to be sure we get the data needed.

        my $feedurl = "https://www.google.com/analytics/feeds/data?ids=ga%3A$profileid"
                     ."&dimensions=ga%3ApagePath%2Cga%3ApageTitle&metrics=ga%3Apageviews"
                     ."&sort=-ga%3Apageviews&start-date=$start&end-date=$end&max-results=$max";
        my $pageviews = _gaDataFeed($feedurl, $token);

        $res = _parse_XML($pageviews, $ctx);

    }
    return $res;
}

sub gamp_page_views {
    my ($ctx, $args) = @_;
    my $a = $ctx->stash('GAMPPageViews');
    if (!defined $a) {
        return $ctx->error('The GAMPPageViews tag must be used within the GoogleAnalyticsMostPopular container tag.');
    }
    return $a;
}

sub gamp_item_type {
    my ($ctx, $args) = @_;
    my $a = $ctx->stash('GAMPItemType');
    if (!defined $a) {
        return $ctx->error('The GAMPItemType tag must be used within the GoogleAnalyticsMostPopular container tag.');
    }
    return $a;
}

sub gamp_other_url {
    my ($ctx, $args) = @_;
    my $a = $ctx->stash('GAMPOtherURL');
    if (!defined $a) {
        return $ctx->error('The GAMPOtherURL tag must be used within the GoogleAnalyticsMostPopular container tag.');
    }
    return $a;
}

sub gamp_other_title {
    my ($ctx, $args) = @_;
    my $a = $ctx->stash('GAMPOtherTitle');
    if (!defined $a) {
        return $ctx->error('The GAMPOtherTitle tag must be used within the GoogleAnalyticsMostPopular container tag.');
    }
    return $a;
}


# this sub will return the token you need to authenticate api requests
# you need to pass your ga login and password to it
sub _gaGetToken {
    # arguments passed to this function
    my $user = shift;
    my $pass = shift;

    # Create a request
    use HTTP::Request;
    my $req = HTTP::Request->new(POST => 'https://www.google.com/accounts/ClientLogin');
    $req->content_type('application/x-www-form-urlencoded');
    $req->content("accountType=GOOGLE&Email=$user&Passwd=$pass&service=analytics&GAMP-1.0");

    # create user agent object
    my $ua = LWP::UserAgent->new;
    $ua->agent('GAMP/1.0'); # This should be set through variables

    # Pass request to the user agent and get a response back
    my $res = $ua->request($req);

    # declare variable
    my $token;

    # Check the outcome of the response
    if ($res->is_success) {
        # look at the result
        if ($res->content =~ m/(?<=Auth=).*/im) {
            # store token so it can be used in subsequent requests
            $token = $&;
        }
        else {
            return MT->log("GAMP Response status: ".$res->status_line."; Response content:".$res->content);
        }
    }
    else {
        # return the error if there was a problem
        return MT->log("GAMP Response status: ".$res->status_line);
    }

    # return the token
    return $token;
}


# this sub will return the xml from a datafeed request
# you need to pass your token to it
sub _gaDataFeed {
    # arguments passed to this function
    my $url = $_[0];
    my $token = $_[1];

    # create user agent object
    my $ua = LWP::UserAgent->new;
    $ua->agent("MyApp/0.1 ");

    # add authorization to headers
    my @headers = (Authorization => "GoogleLogin Auth=$token");

    # request page
    my $res = $ua->get($url, @headers);

    my $content;

    # if the request was successful...
    if ($res->is_success) {
        # this is the xml response
        $content = $res->content;
    } else {
        # return the error if there was a problem
        return MT->log("GAMP Error: ". $res->status_line."\n".$res->content);
    }

    # return the xml
    return $content;
}

sub _parse_XML {
    my ($pageviews, $ctx) = @_;
    # create a XML object for the response
    my $xml = new XML::Simple(KeyAttr=>[]);
    my $tree = $xml->XMLin($pageviews);

    my $plugin = MT->component('GoogleAnalyticsMostPopular');
    my $config = $plugin->get_config_hash('blog:' . $ctx->stash('blog_id') );

    my @valid_blog_ids_entries = split( '/,\s*/', $config->{gamp_valid_blog_id_entries} );
    my @valid_blog_ids_pages   = split( '/,\s*/', $config->{gamp_valid_blog_id_pages} );
    # The other valid URLs are checked later on.
    # MT->log("Blog IDs for Entries: @valid_blog_ids_entries; Blog IDs for Pages: @valid_blog_ids_pages");

    my $builder = $ctx->stash('builder');
    my $tokens  = $ctx->stash('tokens');
    my $res = '';

    my $value;
    my ($gaPagePath, $basename, @entries, $entry, @pages, $page, $blog_id, $gaURL, $gaPageViews);
    my $limit = 1; # To ensure that we output the requested number of results.
    use MT::Entry;
    use MT::Page;

    # iterate through each entry in the xml
    GAMPITEM:
    foreach my $e (@{$tree->{entry}}) {
        # Only check them if we haven't already collected the desired number.
        if ($limit <= $config->{gamp_size_limit}) {
            # Save the path of the Analytics-reported item.
            $gaPagePath = $e->{'dxp:dimension'}->[0]->{value};
            # Remove everything from the path but the file name to get at the entry basename.
            $basename = $gaPagePath;
            $basename =~ s!^.*\/(.*)\..*!$1!; # For "/sub/directory/basename.ext" format
            $basename =~ s!^.*\/(.*)\/!$1!; # For "/sub/directory/basename/" format
            $basename =~ s!\-!\_!g; # Replace hyphens with underscores, because
                                    # underscores are used to store the actual basename in MT.
            #MT->log("$limit. gaPathPath: $gaPagePath; basename: $basename");


            # First, check the entries.

            # Grab all entries that match this basename.
            @entries = MT::Entry->load({ basename => $basename, });
            #MT->log("Found ".@entries." entries to match this basename: $basename");

            # It's possible that several entries exist with the same basename,
            # so we need to check all of them to see if the Permalink will
            # match the URL from Analytics.
            foreach $entry (@entries) {
                $blog_id = $entry->blog_id;
                # Now check if the entry Permalink matches the $gaPagePath.
                #use MT::Blog;
                #my $blog = MT::Blog->load($blog_id);
                #my $domain = $blog->site_url;
                #$domain =~ s!^(https?:\/\/)(.*?)\/.*!$1$2!;
                #$gaURL = $domain . $gaPagePath;
                $gaURL = $config->{gamp_base_url} . $gaPagePath;

                if ($entry->permalink eq $gaURL) {
                    #MT->log('Permalink and gaURL match: '.$entry->permalink);
                    # It does! This is an item that should appear in the most popular list.
                    if (grep /$blog_id/, @valid_blog_ids_entries) {
                        # Check if this URL appears in the most popular list already. If it does,
                        # skip it--we don't want duplicate entries.
                        if (!grep /$gaURL/, $res) {
                            #MT->log('This entry is in a valid blog; publish it!');
                            # This is a valid URL!
                            $ctx->stash('GAMPPageViews', $e->{'dxp:metric'}->{value});
                            $ctx->stash('GAMPItemType', 'entry');
                            $ctx->{__stash}{entry} = $entry;
                            my $out = $builder->build($ctx, $tokens);
                            if (!defined $out) {
                                # A error--perhaps a tag used out of context. Report it.
                                return $ctx->error( $builder->errstr );
                            }
                            $res .= $out;

                            $limit++; # after finding valid responses, increase the limit counter.
                            next GAMPITEM;
                        }
                    }
                }
            }


            # Next, check for pages.

            # Grab all entries that match this basename.
            @pages = MT::Page->load({ basename => $basename, });
            #MT->log("Found ".@pages." pages to match this basename: $basename");

            # It's possible that several entries exist with the same basename,
            # so we need to check all of them to see if the Permalink will
            # match the URL from Analytics.
            foreach $page (@pages) {
                $blog_id = $page->blog_id;
                # Now check if the page Permalink matches the $gaPagePath.
                #use MT::Blog;
                #my $blog = MT::Blog->load($blog_id);
                #my $domain = $blog->site_url;
                #$domain =~ s!^(https?:\/\/)(.*?)\/.*!$1$2!;
                #$gaURL = $domain . $gaPagePath;
                $gaURL = $config->{gamp_base_url} . $gaPagePath;

                if ($page->permalink eq $gaURL) {
                    #MT->log('Permalink and gaURL match: '.$page->permalink);
                    # It does! This is an item that should appear in the most popular list.
                    if (grep /$blog_id/, @valid_blog_ids_pages) {
                        # Check if this URL appears in the most popular list already. If it does,
                        # skip it--we don't want duplicate entries.
                        if (!grep /$gaURL/, $res) {
                            #MT->log('This page is in a valid blog; publish it!');
                            # This is a valid URL!
                            $ctx->stash('GAMPPageViews', $e->{'dxp:metric'}->{value});
                            $ctx->stash('GAMPItemType', 'page');
                            $ctx->{__stash}{entry} = $page;
                            my $out = $builder->build($ctx, $tokens);
                            if (!defined $out) {
                                # A error--perhaps a tag used out of context. Report it.
                                return $ctx->error( $builder->errstr );
                            }
                            $res .= $out;

                            $limit++; # after finding valid responses, increase the limit counter.
                            next GAMPITEM;
                        }
                    }
                }
            }


            # Lastly, check for any other allowed pages.


            my @valid_other = split( "\n", $config->{gamp_valid_other_urls} );
            my $other_details = {};
            foreach my $valid (@valid_other) {
                my ($other_url, $other_title) = split(',\s*', $valid);
                $other_title = trim($other_title); # Remove any extra leading/trailing space

                # Remove the domain name from the allowed URLs, so that it can be
                # compared to $gaPagePath.
                my $path = $other_url;
                $path =~ s!^(https?:\/\/)(.*?)(\/.*)!$3!;

                if ($path eq $gaPagePath) {
                    # Check if this URL appears in the most popular list already. If it does,
                    # skip it--we don't want duplicate entries.
                    if (!grep /$gaURL/, $res) {
                        # This is a valid URL!
                        $ctx->stash('GAMPPageViews', $e->{'dxp:metric'}->{value});
                        $ctx->stash('GAMPItemType', 'other');
                        $ctx->stash('GAMPOtherURL', $other_url);
                        $ctx->stash('GAMPOtherTitle', $other_title );
                        my $out = $builder->build($ctx, $tokens);
                        if (!defined $out) {
                            # A error--perhaps a tag used out of context. Report it.
                            return $ctx->error( $builder->errstr );
                        }
                        $res .= $out;

                        $limit++; # after finding valid responses, increase the limit counter.
                        next GAMPITEM;
                    }
                }
            }
        }
        last if ($limit == $config->{gamp_size_limit});
    }
    return $res;
}

sub trim {
    my $string = shift;
    $string =~ s/^\s+//; # Trim extra space from the beginning of the line
    $string =~ s/\s+$//; # Trim extra space from the end of the line
    return $string;
}


1;

__END__
