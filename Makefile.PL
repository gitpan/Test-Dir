
# $Id: Makefile.PL,v 1.9 2011-02-18 00:30:21 Martin Exp $

use inc::Module::Install;

name     'Test-Dir';
all_from 'lib/Test/Dir.pm';

requires 'Test::Builder';
build_requires 'File::Path' => 2.07;
build_requires 'Test::Builder::Tester';
build_requires 'Test::More';
recommends('Pod::Coverage');
recommends('Test::Pod');
recommends('Test::Pod::Coverage');

WriteAll;

__END__
