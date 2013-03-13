###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file ga.xml
# The source file version number was 1.78, generated on
# 2009/06/15 17:12:26.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::ga;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "a\.m\.", "p\.m\." ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\ d\ MMMM\ y";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "d\ MMMM\ y";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "d\ MMM\ y";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "dd\/MM\/yyyy";
    sub date_format_short { return $date_format_short }
}

{
    my $day_format_abbreviated = [ "Luan", "Máirt", "Céad", "Déar", "Aoine", "Sath", "Domh" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "Dé\ Luain", "Dé\ Máirt", "Dé\ Céadaoin", "Déardaoin", "Dé\ hAoine", "Dé\ Sathairn", "Dé\ Domhnaigh" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "L", "M", "C", "D", "A", "S", "D" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "RC", "AD" ];
    sub era_abbreviated { return $era_abbreviated }
}

sub era_narrow { $_[0]->era_abbreviated() }

{
    my $era_wide = [ "Roimh\ Chríost", "Anno\ Domini" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "Ean", "Feabh", "Márta", "Aib", "Beal", "Meith", "Iúil", "Lún", "MFómh", "DFómh", "Samh", "Noll" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "Eanáir", "Feabhra", "Márta", "Aibreán", "Bealtaine", "Meitheamh", "Iúil", "Lúnasa", "Meán\ Fómhair", "Deireadh\ Fómhair", "Samhain", "Nollaig" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "E", "F", "M", "A", "B", "M", "I", "L", "M", "D", "S", "N" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "R1", "R2", "R3", "R4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}
{
    my $quarter_format_wide = [ "1ú\ ráithe", "2ú\ ráithe", "3ú\ ráithe", "4ú\ ráithe" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }


sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "HH\:mm\:ss\ zzzz";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "HH\:mm\:ss\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "HH\:mm\:ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "HH\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_HHmm = "HH\:mm";
    sub _format_for_HHmm { return $_format_for_HHmm }
}

{
    my $_format_for_HHmmss = "HH\:mm\:ss";
    sub _format_for_HHmmss { return $_format_for_HHmmss }
}

{
    my $_format_for_MMMMd = "d\ MMMM";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_MMdd = "dd\/MM";
    sub _format_for_MMdd { return $_format_for_MMdd }
}

{
    my $_format_for_Md = "d\/M";
    sub _format_for_Md { return $_format_for_Md }
}

{
    my $_format_for_mmss = "mm\:ss";
    sub _format_for_mmss { return $_format_for_mmss }
}

{
    my $_format_for_yyMM = "MM\/yy";
    sub _format_for_yyMM { return $_format_for_yyMM }
}

{
    my $_format_for_yyMMM = "MMM\ yy";
    sub _format_for_yyMMM { return $_format_for_yyMMM }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_format_for_yyyyMM = "MM\/yyyy";
    sub _format_for_yyyyMM { return $_format_for_yyyyMM }
}

{
    my $_format_for_yyyyMMMM = "MMMM\ y";
    sub _format_for_yyyyMMMM { return $_format_for_yyyyMMMM }
}

{
    my $_available_formats =
        {
          "HHmm" => "HH\:mm",
          "HHmmss" => "HH\:mm\:ss",
          "MMMMd" => "d\ MMMM",
          "MMdd" => "dd\/MM",
          "Md" => "d\/M",
          "mmss" => "mm\:ss",
          "yyMM" => "MM\/yy",
          "yyMMM" => "MMM\ yy",
          "yyQ" => "Q\ yy",
          "yyyyMM" => "MM\/yyyy",
          "yyyyMMMM" => "MMMM\ y"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::ga

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'ga' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Irish.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Dé Luain
  Dé Máirt
  Dé Céadaoin
  Déardaoin
  Dé hAoine
  Dé Sathairn
  Dé Domhnaigh

=head3 Abbreviated (format)

  Luan
  Máirt
  Céad
  Déar
  Aoine
  Sath
  Domh

=head3 Narrow (format)

  L
  M
  C
  D
  A
  S
  D

=head3 Wide (stand-alone)

  Dé Luain
  Dé Máirt
  Dé Céadaoin
  Déardaoin
  Dé hAoine
  Dé Sathairn
  Dé Domhnaigh

=head3 Abbreviated (stand-alone)

  Luan
  Máirt
  Céad
  Déar
  Aoine
  Sath
  Domh

=head3 Narrow (stand-alone)

  L
  M
  C
  D
  A
  S
  D

=head2 Months

=head3 Wide (format)

  Eanáir
  Feabhra
  Márta
  Aibreán
  Bealtaine
  Meitheamh
  Iúil
  Lúnasa
  Meán Fómhair
  Deireadh Fómhair
  Samhain
  Nollaig

=head3 Abbreviated (format)

  Ean
  Feabh
  Márta
  Aib
  Beal
  Meith
  Iúil
  Lún
  MFómh
  DFómh
  Samh
  Noll

=head3 Narrow (format)

  E
  F
  M
  A
  B
  M
  I
  L
  M
  D
  S
  N

=head3 Wide (stand-alone)

  Eanáir
  Feabhra
  Márta
  Aibreán
  Bealtaine
  Meitheamh
  Iúil
  Lúnasa
  Meán Fómhair
  Deireadh Fómhair
  Samhain
  Nollaig

=head3 Abbreviated (stand-alone)

  Ean
  Feabh
  Márta
  Aib
  Beal
  Meith
  Iúil
  Lún
  MFómh
  DFómh
  Samh
  Noll

=head3 Narrow (stand-alone)

  E
  F
  M
  A
  B
  M
  I
  L
  M
  D
  S
  N

=head2 Quarters

=head3 Wide (format)

  1ú ráithe
  2ú ráithe
  3ú ráithe
  4ú ráithe

=head3 Abbreviated (format)

  R1
  R2
  R3
  R4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1ú ráithe
  2ú ráithe
  3ú ráithe
  4ú ráithe

=head3 Abbreviated (stand-alone)

  R1
  R2
  R3
  R4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  Roimh Chríost
  Anno Domini

=head3 Abbreviated

  RC
  AD

=head3 Narrow

  RC
  AD

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Dé Máirt 5 Feabhra 2008
   1995-12-22T09:05:02 = Dé hAoine 22 Nollaig 1995
  -0010-09-15T04:44:23 = Dé Sathairn 15 Meán Fómhair -10

=head3 Long

   2008-02-05T18:30:30 = 5 Feabhra 2008
   1995-12-22T09:05:02 = 22 Nollaig 1995
  -0010-09-15T04:44:23 = 15 Meán Fómhair -10

=head3 Medium

   2008-02-05T18:30:30 = 5 Feabh 2008
   1995-12-22T09:05:02 = 22 Noll 1995
  -0010-09-15T04:44:23 = 15 MFómh -10

=head3 Short

   2008-02-05T18:30:30 = 05/02/2008
   1995-12-22T09:05:02 = 22/12/1995
  -0010-09-15T04:44:23 = 15/09/-010

=head3 Default

   2008-02-05T18:30:30 = 5 Feabh 2008
   1995-12-22T09:05:02 = 22 Noll 1995
  -0010-09-15T04:44:23 = 15 MFómh -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = Dé Máirt 5 Feabhra 2008 18:30:30 UTC
   1995-12-22T09:05:02 = Dé hAoine 22 Nollaig 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = Dé Sathairn 15 Meán Fómhair -10 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 5 Feabhra 2008 18:30:30 UTC
   1995-12-22T09:05:02 = 22 Nollaig 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = 15 Meán Fómhair -10 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 5 Feabh 2008 18:30:30
   1995-12-22T09:05:02 = 22 Noll 1995 09:05:02
  -0010-09-15T04:44:23 = 15 MFómh -10 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 05/02/2008 18:30
   1995-12-22T09:05:02 = 22/12/1995 09:05
  -0010-09-15T04:44:23 = 15/09/-010 04:44

=head3 Default

   2008-02-05T18:30:30 = 5 Feabh 2008 18:30:30
   1995-12-22T09:05:02 = 22 Noll 1995 09:05:02
  -0010-09-15T04:44:23 = 15 MFómh -10 04:44:23

=head2 Available Formats

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Máirt
   1995-12-22T09:05:02 = 22 Aoine
  -0010-09-15T04:44:23 = 15 Sath

=head3 HHmm (HH:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 HHmmss (HH:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = Máirt, 2-5
   1995-12-22T09:05:02 = Aoine, 12-22
  -0010-09-15T04:44:23 = Sath, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Feabh
   1995-12-22T09:05:02 = Noll
  -0010-09-15T04:44:23 = MFómh

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Máirt Feabh 5
   1995-12-22T09:05:02 = Aoine Noll 22
  -0010-09-15T04:44:23 = Sath MFómh 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Máirt Feabhra 5
   1995-12-22T09:05:02 = Aoine Nollaig 22
  -0010-09-15T04:44:23 = Sath Meán Fómhair 15

=head3 MMMMd (d MMMM)

   2008-02-05T18:30:30 = 5 Feabhra
   1995-12-22T09:05:02 = 22 Nollaig
  -0010-09-15T04:44:23 = 15 Meán Fómhair

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Feabh 5
   1995-12-22T09:05:02 = Noll 22
  -0010-09-15T04:44:23 = MFómh 15

=head3 MMdd (dd/MM)

   2008-02-05T18:30:30 = 05/02
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/09

=head3 Md (d/M)

   2008-02-05T18:30:30 = 5/2
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/9

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 p.m.
   1995-12-22T09:05:02 = 9:05 a.m.
  -0010-09-15T04:44:23 = 4:44 a.m.

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 p.m.
   1995-12-22T09:05:02 = 9:05:02 a.m.
  -0010-09-15T04:44:23 = 4:44:23 a.m.

=head3 mmss (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (y-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -10-9

=head3 yMEd (EEE, y-M-d)

   2008-02-05T18:30:30 = Máirt, 2008-2-5
   1995-12-22T09:05:02 = Aoine, 1995-12-22
  -0010-09-15T04:44:23 = Sath, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Feabh
   1995-12-22T09:05:02 = 1995 Noll
  -0010-09-15T04:44:23 = -10 MFómh

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Máirt, 2008 Feabh 5
   1995-12-22T09:05:02 = Aoine, 1995 Noll 22
  -0010-09-15T04:44:23 = Sath, -10 MFómh 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Feabhra
   1995-12-22T09:05:02 = 1995 Nollaig
  -0010-09-15T04:44:23 = -10 Meán Fómhair

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 R1
   1995-12-22T09:05:02 = 1995 R4
  -0010-09-15T04:44:23 = -10 R3

=head3 yyMM (MM/yy)

   2008-02-05T18:30:30 = 02/08
   1995-12-22T09:05:02 = 12/95
  -0010-09-15T04:44:23 = 09/10

=head3 yyMMM (MMM yy)

   2008-02-05T18:30:30 = Feabh 08
   1995-12-22T09:05:02 = Noll 95
  -0010-09-15T04:44:23 = MFómh 10

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyyyMM (MM/yyyy)

   2008-02-05T18:30:30 = 02/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 09/-010

=head3 yyyyMMMM (MMMM y)

   2008-02-05T18:30:30 = Feabhra 2008
   1995-12-22T09:05:02 = Nollaig 1995
  -0010-09-15T04:44:23 = Meán Fómhair -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

Dé Luain


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut
