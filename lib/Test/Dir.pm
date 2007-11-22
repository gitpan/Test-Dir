package Test::Dir;

use warnings;
use strict;

use Exporter;
use Test::Builder;

use base 'Exporter';
our @EXPORT = qw( dir_exists_ok dir_not_exists_ok );

=head1 NAME

Test::Dir - test directory attributes

=cut

our $VERSION = do { my @r = (q$Revision: 1.2 $ =~ /\d+/g); sprintf "%d."."%03d" x $#r, @r };


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Test::Dir;

    my $foo = Test::Dir->new();
    ...

=cut

my $Test = new Test::Builder;

=head1 FUNCTIONS

=head2 dir_exists_ok

Ok if the directory exists, and not ok otherwise.

=cut

sub dir_exists_ok
  {
  my $sDir = shift;
  my $sName = shift || "dir $sDir exists";
  my $iOK = -d $sDir;
  if ($iOK)
    {
    $Test->ok(1, $sName);
    }
  else
    {
    $Test->diag(qq{directory [$sDir] does not exist});
    $Test->ok(0, $sName);
    }
  } # dir_exists_ok


=head2 dir_not_exists_ok

Ok if the directory does not exist, and not ok otherwise.

=cut

sub dir_not_exists_ok
  {
  my $sDir = shift;
  my $sName = shift || "dir $sDir does not exist";
  my $iOK = ! -d $sDir;
  if ($iOK)
    {
    $Test->ok(1, $sName);
    }
  else
    {
    $Test->diag(qq{directory [$sDir] does not exist});
    $Test->ok(0, $sName);
    }
  } # dir_not_exists_ok


=head1 AUTHOR

Martin 'Kingpin' Thurn, C<< <mthurn at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-test-dir at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Test-Dir>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Test::Dir


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

Copyright (C) 2007 Martin 'Kingpin' Thurn

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1;

__END__

