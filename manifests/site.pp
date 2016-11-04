# puppet apply -v manifests/init.pp --modulepath=modules/ --noop --test
# puppet apply -v manifests/init.pp --modulepath=modules/

node default {
    # puppet config
    include puppet


    class { '::mysql::server':
        root_password           => hiera('mysql_root_password'),
        remove_default_accounts => true,
    }

    class { 'apache': }

    apache::mod { 'rewrite': }

    apache::vhost { 'nashvillest.com':
        serveraliases => [
            'www.nashvillest.com'
        ],
        port          => '80',
        docroot       => '/var/www/nashvillest.com',
        docroot_owner => 'www-data',
        docroot_group => 'www-data',
    }

    # misc packages
    package { [
        'vim',
        'git-core',
    ]:
        ensure  => 'installed',
    }
}
