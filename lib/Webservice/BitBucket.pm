package Webservice::BitBucket;
use Moose;

our $VERSION = '0.01';

has 'username' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'password' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'api' => (
    is       => 'ro',
    isa      => 'Num',
    required => 0,
    default  => sub { return '2.0' },
);

has 'base_url' => (
    is       => 'ro',
    isa      => 'Str',
    required => 0,
    default  => sub { return "http://api.bitbucket.org" },
);

has 'ua' => (
    isa      => 'LWP::UserAgent',
    is       => 'ro',
    required => 0,
    default  => sub { use LWP::UserAgent; return LWP::UserAgent->new() },
);

__PACKAGE__->meta->make_immutable;

__END__

=head1 NAME

Webservice::BitBucket - REST API to BitBucket.org

=head1 SYNOPSIS

    use Webservice::BitBucket;

    my $bitbucket = Webservice::BitBucket->new(
        username => $username,
        password => $password,
    );

    my @repos = $bitbucket->repositories();
    foreach my $repo (@repos) {
        $repo->overview
        $repo->source
        $repo->commit
        $repo->branch
        $repo->pull_request
    }

    my @followers = $bitbucket->followers();

    my @following = $bitbucket->following();

    my @teams = $bitbucket->teams();

    my @acticivite = $bitbucket->activities();



=head1 AUTHOR

Wesley Schwengle, C<< <wesley at schwengle.net> >>

=head1 BUGS

=head1 COPYRIGHT and LICENSE

Copyright 2014 Wesley Schwengle.

This program is released under the following license: EUPL

