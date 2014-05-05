#! perl

use Test::More;
use Webservice::BitBucket;

{
    my $bitbucket = Webservice::BitBucket->new(
        username => 'wesleys',
        password => 'foobar',
    );
    isa_ok($bitbucket, "Webservice::BitBucket");

    is($bitbucket->api, '2.0', "API version is correct");
    isa_ok($bitbucket->ua, "LWP::UserAgent");
    is($bitbucket->base_url, "http://api.bitbucket.org", "Base URL is correct");
}

done_testing;
