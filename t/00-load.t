#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Webservice::BitBucket' ) || print "Bail out!\n";
}

diag( "Testing Webservice::BitBucket $Webservice::BitBucket::VERSION, Perl $], $^X" );
