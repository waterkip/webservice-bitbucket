NAME
    Webservice::BitBucket - REST API to BitBucket.org

SYNOPSIS
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

AUTHOR
    Wesley Schwengle, "<wesley at schwengle.net>"

BUGS
COPYRIGHT and LICENSE
    Copyright 2014 Wesley Schwengle.

    This program is released under the following license: EUPL

