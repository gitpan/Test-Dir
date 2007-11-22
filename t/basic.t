
use blib;

use Test::Builder::Tester;
use Test::More tests => 3;

BEGIN
  {
  use_ok('Test::Dir');
  }

# t/test_dir is part of the distribution:
chdir 't' or print "bail out! Could not change directories: $!";

my $sDirExist = 'test_dir';
test_out(qq'ok 1 - dir $sDirExist exists');
dir_exists_ok($sDirExist);
test_test;
my $sDirNotExist = 'no_such_dir';
test_out(qq'ok 1 - dir $sDirNotExist does not exist');
dir_not_exists_ok($sDirNotExist);
test_test;

__END__
