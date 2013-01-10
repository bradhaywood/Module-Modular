#!perl
use lib 't';
use Test::More;
use MyModule;

my $m = MyModule->new();
is $m->var_from_plugin(), 'knees', => 'Load plugins is working';

done_testing();
