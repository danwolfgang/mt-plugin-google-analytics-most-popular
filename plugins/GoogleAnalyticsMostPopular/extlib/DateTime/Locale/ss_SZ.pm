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
# This file was generated from the source file ss_SZ.xml
# The source file version number was 1.5, generated on
# 2009/05/05 23:06:40.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::ss_SZ;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::ss';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::ss_SZ

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'ss_SZ' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Swati Swaziland.

=head1 DATA

This locale inherits from the L<DateTime::Locale::ss> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  uMsombuluko
  Lesibili
  Lesitsatfu
  Lesine
  Lesihlanu
  uMgcibelo
  Lisontfo

=head3 Abbreviated (format)

  Mso
  Bil
  Tsa
  Ne
  Hla
  Mgc
  Son

=head3 Narrow (format)

  2
  3
  4
  5
  6
  7
  1

=head3 Wide (stand-alone)

  uMsombuluko
  Lesibili
  Lesitsatfu
  Lesine
  Lesihlanu
  uMgcibelo
  Lisontfo

=head3 Abbreviated (stand-alone)

  Mso
  Bil
  Tsa
  Ne
  Hla
  Mgc
  Son

=head3 Narrow (stand-alone)

  2
  3
  4
  5
  6
  7
  1

=head2 Months

=head3 Wide (format)

  Bhimbidvwane
  iNdlovana
  iNdlovu-lenkhulu
  Mabasa
  iNkhwekhweti
  iNhlaba
  Kholwane
  iNgci
  iNyoni
  iMphala
  Lweti
  iNgongoni

=head3 Abbreviated (format)

  Bhi
  Van
  Vol
  Mab
  Nkh
  Nhl
  Kho
  Ngc
  Nyo
  Mph
  Lwe
  Ngo

=head3 Narrow (format)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head3 Wide (stand-alone)

  Bhimbidvwane
  iNdlovana
  iNdlovu-lenkhulu
  Mabasa
  iNkhwekhweti
  iNhlaba
  Kholwane
  iNgci
  iNyoni
  iMphala
  Lweti
  iNgongoni

=head3 Abbreviated (stand-alone)

  Bhi
  Van
  Vol
  Mab
  Nkh
  Nhl
  Kho
  Ngc
  Nyo
  Mph
  Lwe
  Ngo

=head3 Narrow (stand-alone)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BC
  AD

=head3 Abbreviated

  BC
  AD

=head3 Narrow

  BC
  AD

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Lesibili, 2008 iNdlovana 05
   1995-12-22T09:05:02 = Lesihlanu, 1995 iNgongoni 22
  -0010-09-15T04:44:23 = uMgcibelo, -10 iNyoni 15

=head3 Long

   2008-02-05T18:30:30 = 2008 iNdlovana 5
   1995-12-22T09:05:02 = 1995 iNgongoni 22
  -0010-09-15T04:44:23 = -10 iNyoni 15

=head3 Medium

   2008-02-05T18:30:30 = 2008 Van 5
   1995-12-22T09:05:02 = 1995 Ngo 22
  -0010-09-15T04:44:23 = -10 Nyo 15

=head3 Short

   2008-02-05T18:30:30 = 08/02/05
   1995-12-22T09:05:02 = 95/12/22
  -0010-09-15T04:44:23 = 10/09/15

=head3 Default

   2008-02-05T18:30:30 = 2008 Van 5
   1995-12-22T09:05:02 = 1995 Ngo 22
  -0010-09-15T04:44:23 = -10 Nyo 15

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

   2008-02-05T18:30:30 = Lesibili, 2008 iNdlovana 05 18:30:30 UTC
   1995-12-22T09:05:02 = Lesihlanu, 1995 iNgongoni 22 09:05:02 UTC
  -0010-09-15T04:44:23 = uMgcibelo, -10 iNyoni 15 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 2008 iNdlovana 5 18:30:30 UTC
   1995-12-22T09:05:02 = 1995 iNgongoni 22 09:05:02 UTC
  -0010-09-15T04:44:23 = -10 iNyoni 15 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 2008 Van 5 18:30:30
   1995-12-22T09:05:02 = 1995 Ngo 22 09:05:02
  -0010-09-15T04:44:23 = -10 Nyo 15 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 08/02/05 18:30
   1995-12-22T09:05:02 = 95/12/22 09:05
  -0010-09-15T04:44:23 = 10/09/15 04:44

=head3 Default

   2008-02-05T18:30:30 = 2008 Van 5 18:30:30
   1995-12-22T09:05:02 = 1995 Ngo 22 09:05:02
  -0010-09-15T04:44:23 = -10 Nyo 15 04:44:23

=head2 Available Formats

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Bil
   1995-12-22T09:05:02 = 22 Hla
  -0010-09-15T04:44:23 = 15 Mgc

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

   2008-02-05T18:30:30 = Bil, 2-5
   1995-12-22T09:05:02 = Hla, 12-22
  -0010-09-15T04:44:23 = Mgc, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Van
   1995-12-22T09:05:02 = Ngo
  -0010-09-15T04:44:23 = Nyo

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Bil Van 5
   1995-12-22T09:05:02 = Hla Ngo 22
  -0010-09-15T04:44:23 = Mgc Nyo 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Bil iNdlovana 5
   1995-12-22T09:05:02 = Hla iNgongoni 22
  -0010-09-15T04:44:23 = Mgc iNyoni 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = iNdlovana 5
   1995-12-22T09:05:02 = iNgongoni 22
  -0010-09-15T04:44:23 = iNyoni 15

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Van 5
   1995-12-22T09:05:02 = Ngo 22
  -0010-09-15T04:44:23 = Nyo 15

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

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

   2008-02-05T18:30:30 = Bil, 2008-2-5
   1995-12-22T09:05:02 = Hla, 1995-12-22
  -0010-09-15T04:44:23 = Mgc, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Van
   1995-12-22T09:05:02 = 1995 Ngo
  -0010-09-15T04:44:23 = -10 Nyo

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Bil, 2008 Van 5
   1995-12-22T09:05:02 = Hla, 1995 Ngo 22
  -0010-09-15T04:44:23 = Mgc, -10 Nyo 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 iNdlovana
   1995-12-22T09:05:02 = 1995 iNgongoni
  -0010-09-15T04:44:23 = -10 iNyoni

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -10 Q3

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

uMsombuluko


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
