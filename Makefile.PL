
# $Id: Makefile.PL,v 1.3 2007/11/22 22:35:12 Daddy Exp $

use inc::Module::Install;

name     'Test-Dir';
all_from 'lib/Test/Dir.pm';
author   q{Martin 'Kingpin' Thurn <mthurn@cpan.org>}; # }}; # Emacs highlight bug?

requires 'Test::Builder';
build_requires 'Test::Builder::Tester';
build_requires 'Test::More';

WriteAll;

__END__
