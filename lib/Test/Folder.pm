
# $Id: Folder.pm,v 1.1 2008/09/20 00:49:27 Martin Exp $

package Test::Folder;

use strict;
use warnings;

use Exporter;
use Test::Builder;

use vars qw( @EXPORT $VERSION );

use base 'Exporter';
@EXPORT = qw( folder_exists_ok folder_not_exists_ok );

=head1 NAME

Test::Folder - test folder attributes

=cut

$VERSION = do { my @r = (q$Revision: 1.1 $ =~ /\d+/g); sprintf "%d."."%03d" x $#r, @r };

my $Test = new Test::Builder;


=head1 SYNOPSIS

  use Test::More ...;
  use Test::Folder;

=head1 DESCRIPTION

This modules provides a collection of test utilities for folder attributes.
Use it in combination with Test::More in your test programs.

=head1 FUNCTIONS

=head2 folder_exists_ok(FOLDERNAME [, TESTNAME] )

Ok if the folder exists, and not ok otherwise.

=cut

sub folder_exists_ok
  {
  my $sDir = shift;
  my $sName = shift || "folder $sDir exists";
  my $iOK = -d $sDir;
  if ($iOK)
    {
    $Test->ok(1, $sName);
    }
  else
    {
    $Test->diag(qq{folder [$sDir] does not exist});
    $Test->ok(0, $sName);
    }
  } # folder_exists_ok


=head2 folder_not_exists_ok(FOLDERNAME [, TESTNAME] )

Ok if the folder does not exist, and not ok otherwise.

=cut

sub folder_not_exists_ok
  {
  my $sDir = shift;
  my $sName = shift || "folder $sDir does not exist";
  my $iOK = ! -d $sDir;
  if ($iOK)
    {
    $Test->ok(1, $sName);
    }
  else
    {
    $Test->diag(qq{folder [$sDir] does not exist});
    $Test->ok(0, $sName);
    }
  } # folder_not_exists_ok


=head1 TO DO

There are probably some more folder attributes that can be tested.
If you need them, please ask (or better yet, contribute code!).

=head1 AUTHOR

Martin 'Kingpin' Thurn, C<< <mthurn at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-test-dir at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Test-Dir>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

  perldoc Test::Folder

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Test-Dir>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Test-Dir>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Test-Dir>

=item * Search CPAN

L<http://search.cpan.org/dist/Test-Dir>

=back

=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright (C) 2007-2008 Martin 'Kingpin' Thurn

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1;

__END__

