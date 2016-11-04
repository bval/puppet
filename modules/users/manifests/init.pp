# Setup default users
class users {

    user { 'cwage':
        ensure     => 'present',
        home       => '/home/cwage',
        managehome => true,
        comment    => 'Chris Wage',
        groups     => ['www-data', 'sudo' ],
        shell      => '/bin/bash',
    }

    file { '/home/cwage/.ssh':
        ensure  => directory,
        owner   => 'cwage',
        group   => 'cwage',
        mode    => '0700',
        require => User['cwage']
    }


    ssh_authorized_key { 'cwage@quietlife.net':
        ensure  => present,
        user    => 'cwage',
        type    => 'ssh-rsa',
        key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCZ3NhFpYPm/xey4e0ujjlTOjvSJpNNC7dCR6ncGc7NZKkhKJVcx7H8I1sv4byQRkQ4caM8ehzn8j01KC9me/ZmcWz8MGIFY6lTp5W6r0aG97OVSXK+qyDWkEWEYoUYcWGsmjsfXjBhpWkHTkzYhtvl6VebEBRvXKSnvsln1n7x893w0itzGsT5abvMQS3wTsYVf1bHaWptagXObGaok/cngsNivfmWKp/SeB6/KQg/BAa5vsG5unkOZYtiUYZY4hclzSENl9gYV1xyYJh1b0sa5cCnokahAY+vOfpKMqq0ixfvvT3n+NtiLvfq4fUGgNeRAskv9Cza/f60gwI8g8Ah',
        require => File['/home/cwage/.ssh']
    }

    user { 'syeargin':
        ensure     => 'present',
        home       => '/home/syeargin',
        managehome => true,
        comment    => 'Stephen Yeargin',
        groups     => ['www-data', 'sudo' ],
        shell      => '/bin/bash',
    }

    file { '/home/syeargin/.ssh':
        ensure  => directory,
        owner   => 'syeargin',
        group   => 'syeargin',
        mode    => '0700',
        require => User['syeargin']
    }

    ssh_authorized_key { 'syeargin':
        ensure  => present,
        user    => 'syeargin',
        type    => 'ssh-rsa',
        key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCZ3NhFpYPm/xey4e0ujjlTOjvSJpNNC7dCR6ncGc7NZKkhKJVcx7H8I1sv4byQRkQ4caM8ehzn8j01KC9me/ZmcWz8MGIFY6lTp5W6r0aG97OVSXK+qyDWkEWEYoUYcWGsmjsfXjBhpWkHTkzYhtvl6VebEBRvXKSnvsln1n7x893w0itzGsT5abvMQS3wTsYVf1bHaWptagXObGaok/cngsNivfmWKp/SeB6/KQg/BAa5vsG5unkOZYtiUYZY4hclzSENl9gYV1xyYJh1b0sa5cCnokahAY+vOfpKMqq0ixfvvT3n+NtiLvfq4fUGgNeRAskv9Cza/f60gwI8g8Ah',
        require => File['/home/cwage/.ssh']
    }

}