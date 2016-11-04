# Install basic LAMP stuff
class lamp {
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

}
