
# $Id: Makefile.PL,v 1.5 2008/01/20 23:06:36 Daddy Exp $

use inc::Module::Install;

name     'Test-Dir';
all_from 'lib/Test/Dir.pm';
author   q{Martin 'Kingpin' Thurn <mthurn@cpan.org>}; # }}; # Emacs highlight bug?

requires 'Test::Builder';
build_requires 'Test::Builder::Tester';
build_requires 'Test::More';
build_recommends('Pod::Coverage');
build_recommends('Test::Pod');
build_recommends('Test::Pod::Coverage');

WriteAll;

__END__
