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
# This file was generated from the source file es_BO.xml
# The source file version number was 1.53, generated on
# 2009/05/05 23:06:35.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::es_BO;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::es';

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

DateTime::Locale::es_BO

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'es_BO' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Spanish Bolivia.

=head1 DATA

This locale inherits from the L<DateTime::Locale::es> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  lunes
  martes
  miércoles
  jueves
  viernes
  sábado
  domingo

=head3 Abbreviated (format)

  lun
  mar
  mié
  jue
  vie
  sáb
  dom

=head3 Narrow (format)

  L
  M
  M
  J
  V
  S
  D

=head3 Wide (stand-alone)

  lunes
  martes
  miércoles
  jueves
  viernes
  sábado
  domingo

=head3 Abbreviated (stand-alone)

  lun
  mar
  mié
  jue
  vie
  sáb
  dom

=head3 Narrow (stand-alone)

  L
  M
  M
  J
  V
  S
  D

=head2 Months

=head3 Wide (format)

  enero
  febrero
  marzo
  abril
  mayo
  junio
  julio
  agosto
  septiembre
  octubre
  noviembre
  diciembre

=head3 Abbreviated (format)

  ene
  feb
  mar
  abr
  may
  jun
  jul
  ago
  sep
  oct
  nov
  dic

=head3 Narrow (format)

  E
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  enero
  febrero
  marzo
  abril
  mayo
  junio
  julio
  agosto
  septiembre
  octubre
  noviembre
  diciembre

=head3 Abbreviated (stand-alone)

  ene
  feb
  mar
  abr
  may
  jun
  jul
  ago
  sep
  oct
  nov
  dic

=head3 Narrow (stand-alone)

  E
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  1er trimestre
  2º trimestre
  3er trimestre
  4º trimestre

=head3 Abbreviated (format)

  T1
  T2
  T3
  T4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1er trimestre
  2º trimestre
  3er trimestre
  4º trimestre

=head3 Abbreviated (stand-alone)

  T1
  T2
  T3
  T4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  antes de Cristo
  anno Dómini

=head3 Abbreviated

  a.C.
  d.C.

=head3 Narrow

  a.C.
  d.C.

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = martes 5 de febrero de 2008
   1995-12-22T09:05:02 = viernes 22 de diciembre de 1995
  -0010-09-15T04:44:23 = sábado 15 de septiembre de -10

=head3 Long

   2008-02-05T18:30:30 = 5 de febrero de 2008
   1995-12-22T09:05:02 = 22 de diciembre de 1995
  -0010-09-15T04:44:23 = 15 de septiembre de -10

=head3 Medium

   2008-02-05T18:30:30 = 05/02/2008
   1995-12-22T09:05:02 = 22/12/1995
  -0010-09-15T04:44:23 = 15/09/-010

=head3 Short

   2008-02-05T18:30:30 = 05/02/08
   1995-12-22T09:05:02 = 22/12/95
  -0010-09-15T04:44:23 = 15/09/10

=head3 Default

   2008-02-05T18:30:30 = 05/02/2008
   1995-12-22T09:05:02 = 22/12/1995
  -0010-09-15T04:44:23 = 15/09/-010

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

   2008-02-05T18:30:30 = martes 5 de febrero de 2008 18:30:30 UTC
   1995-12-22T09:05:02 = viernes 22 de diciembre de 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = sábado 15 de septiembre de -10 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 5 de febrero de 2008 18:30:30 UTC
   1995-12-22T09:05:02 = 22 de diciembre de 1995 09:05:02 UTC
  -0010-09-15T04:44:23 = 15 de septiembre de -10 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 05/02/2008 18:30:30
   1995-12-22T09:05:02 = 22/12/1995 09:05:02
  -0010-09-15T04:44:23 = 15/09/-010 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 05/02/08 18:30
   1995-12-22T09:05:02 = 22/12/95 09:05
  -0010-09-15T04:44:23 = 15/09/10 04:44

=head3 Default

   2008-02-05T18:30:30 = 05/02/2008 18:30:30
   1995-12-22T09:05:02 = 22/12/1995 09:05:02
  -0010-09-15T04:44:23 = 15/09/-010 04:44:23

=head2 Available Formats

=head3 EEEd (EEE d)

   2008-02-05T18:30:30 = mar 5
   1995-12-22T09:05:02 = vie 22
  -0010-09-15T04:44:23 = sáb 15

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

=head3 MEd (E, d-M)

   2008-02-05T18:30:30 = mar, 5-2
   1995-12-22T09:05:02 = vie, 22-12
  -0010-09-15T04:44:23 = sáb, 15-9

=head3 MMM (LLL)

   2008-02-05T18:30:30 = feb
   1995-12-22T09:05:02 = dic
  -0010-09-15T04:44:23 = sep

=head3 MMMEd (E d MMM)

   2008-02-05T18:30:30 = mar 5 feb
   1995-12-22T09:05:02 = vie 22 dic
  -0010-09-15T04:44:23 = sáb 15 sep

=head3 MMMMEd (E d MMMM)

   2008-02-05T18:30:30 = mar 5 febrero
   1995-12-22T09:05:02 = vie 22 diciembre
  -0010-09-15T04:44:23 = sáb 15 septiembre

=head3 MMMMd (d 'de' MMMM)

   2008-02-05T18:30:30 = 5 de febrero
   1995-12-22T09:05:02 = 22 de diciembre
  -0010-09-15T04:44:23 = 15 de septiembre

=head3 MMMd (d MMM)

   2008-02-05T18:30:30 = 5 feb
   1995-12-22T09:05:02 = 22 dic
  -0010-09-15T04:44:23 = 15 sep

=head3 MMMdd (dd-MMM)

   2008-02-05T18:30:30 = 05-feb
   1995-12-22T09:05:02 = 22-dic
  -0010-09-15T04:44:23 = 15-sep

=head3 MMd (d/MM)

   2008-02-05T18:30:30 = 5/02
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/09

=head3 MMdd (MM/dd)

   2008-02-05T18:30:30 = 02/05
   1995-12-22T09:05:02 = 12/22
  -0010-09-15T04:44:23 = 09/15

=head3 Md (d/M)

   2008-02-05T18:30:30 = 5/2
   1995-12-22T09:05:02 = 22/12
  -0010-09-15T04:44:23 = 15/9

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 hhmm (hh:mm a)

   2008-02-05T18:30:30 = 06:30 p.m.
   1995-12-22T09:05:02 = 09:05 a.m.
  -0010-09-15T04:44:23 = 04:44 a.m.

=head3 hhmmss (hh:mm:ss a)

   2008-02-05T18:30:30 = 06:30:30 p.m.
   1995-12-22T09:05:02 = 09:05:02 a.m.
  -0010-09-15T04:44:23 = 04:44:23 a.m.

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

=head3 yM (M/yyyy)

   2008-02-05T18:30:30 = 2/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 9/-010

=head3 yMEd (EEE d/M/yyyy)

   2008-02-05T18:30:30 = mar 5/2/2008
   1995-12-22T09:05:02 = vie 22/12/1995
  -0010-09-15T04:44:23 = sáb 15/9/-010

=head3 yMMM (MMM y)

   2008-02-05T18:30:30 = feb 2008
   1995-12-22T09:05:02 = dic 1995
  -0010-09-15T04:44:23 = sep -10

=head3 yMMMEd (EEE, d MMM y)

   2008-02-05T18:30:30 = mar, 5 feb 2008
   1995-12-22T09:05:02 = vie, 22 dic 1995
  -0010-09-15T04:44:23 = sáb, 15 sep -10

=head3 yMMMM (MMMM 'de' y)

   2008-02-05T18:30:30 = febrero de 2008
   1995-12-22T09:05:02 = diciembre de 1995
  -0010-09-15T04:44:23 = septiembre de -10

=head3 yQ (Q yyyy)

   2008-02-05T18:30:30 = 1 2008
   1995-12-22T09:05:02 = 4 1995
  -0010-09-15T04:44:23 = 3 -010

=head3 yQQQ (QQQ yyyy)

   2008-02-05T18:30:30 = T1 2008
   1995-12-22T09:05:02 = T4 1995
  -0010-09-15T04:44:23 = T3 -010

=head3 yyMM (MM/yy)

   2008-02-05T18:30:30 = 02/08
   1995-12-22T09:05:02 = 12/95
  -0010-09-15T04:44:23 = 09/10

=head3 yyMMM (MMM-yy)

   2008-02-05T18:30:30 = feb-08
   1995-12-22T09:05:02 = dic-95
  -0010-09-15T04:44:23 = sep-10

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyQQQQ (QQQQ 'de' yy)

   2008-02-05T18:30:30 = 1er trimestre de 08
   1995-12-22T09:05:02 = 4º trimestre de 95
  -0010-09-15T04:44:23 = 3er trimestre de 10

=head3 yyyyMM (MM/yyyy)

   2008-02-05T18:30:30 = 02/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 09/-010

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

lunes


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
