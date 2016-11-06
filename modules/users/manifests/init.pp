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
        key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCw2x0TP8ZnAlAmwAKMzuUKFiZK6jCSqr+iMVPDrrjtwWTHxK5K/bePghhsxbO0XRsg781TLUlGqHPktdUilXPvjCSsYnDFB8M3/z39NQWBE9tQA5fSuwLcv1ccWMedVwbVc2Kske3gGGPH2hazcSTq5Hk3ZRmzycZcwzjFbav+eflPE0dccNi/UdDLNwyBO0QTNEM0wppymK6OBF2LcYkefop+uHa1aYj4zn4zGEXH17Is4E/lP3uWRhDvUnM7Ke4mVjvyTIMOq+OYi2hiXBu4N6yTr0ER3HCvgkWUWUXzmRexk1divzAdugDtlvTMh0EJGbRFnP0YF9tunFPyveWV',
        require => File['/home/cwage/.ssh']
    }

    user { 'codeyh':
        ensure     => 'present',
        home       => '/home/codeyh',
        managehome => true,
        comment    => 'Codey Holland',
        groups     => ['www-data', 'sudo' ],
        shell      => '/bin/bash',
    }

    file { '/home/codeyh/.ssh':
        ensure  => directory,
        owner   => 'codeyh',
        group   => 'codeyh',
        mode    => '0700',
        require => User['codeyh']
    }

    ssh_authorized_key { 'codeyh':
        ensure  => present,
        user    => 'codeyh',
        type    => 'ssh-rsa',
        key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQClF53F3WnXEcZ81uBckjCmgm8ozW6NR/ywubtnxTFLV5aR3YMgTzlw2NoLIGU3sJvyygf2rhdiWIE5OzKjDi0OCoaR3CTnAWo3QwzdGXiwuHxiXcH/VW5mfeKEvHL7sQ8SVjh+O1fMa4it2H/+tudLSM//T0qq6tT6qNlxO/Q8vb+KnuK7yjyrywFm+cFWN+O2ZOLFnmHTemzj5WxcqWPFSUaQToK8+zka97isyC2bj+SnfIsFYgxQLwPzknIFl9KwI7BCUK9MlmvaCgHIsuu/1VACVtGcXe7sRxBaACQmOyistFmL0kOMQ0gUOwC/qtZlIYsYEfuukJDIT3OGlgLN',
        require => File['/home/codeyh/.ssh']
    }

    user { 'bethdowney':
        ensure     => 'present',
        home       => '/home/bethdowney',
        managehome => true,
        comment    => 'Beth Downey',
        groups     => ['www-data', 'sudo' ],
        shell      => '/bin/bash',
    }

    file { '/home/bethdowney/.ssh':
        ensure  => directory,
        owner   => 'bethdowney',
        group   => 'bethdowney',
        mode    => '0700',
        require => User['bethdowney']
    }

    ssh_authorized_key { 'bethdowney':
        ensure  => present,
        user    => 'bethdowney',
        type    => 'ssh-rsa',
        key     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDjtiqNwhfkpSmwv3epystoX9AgWXNVuxi8MARa5YjKS2FwD5eMMoccR9eMbFRP+Z64gbnbD8/EHqM3UZJKpYamRoXSg3GnlcQbWVM1WpELPn1x+5uj8YWfr5J0fhabRaIgLhaI4pizn5gSXdnjhltv3HNMGUZ1tMZtCzpeDPacAeZjXeRutqI36E3cb2sp6OsIox/Su4K2zcr++kl5YUk+ACA494R7XWQgpV/2Sy4T5Lqf4BBtud1AH1Fzfwj1sZzuwvmLV7pEbb+K3jMfWwsAANj3Zo7WTkDsCE806NQmEJR6nXit7G2rWdnjecD51eSLYBuHYnf2aFisnqlAHDCx7HvMGGy5XXxsJvjNOxghrpYZC2CAwdOAC+0gUztgW1udsNjYMSS/RUwBuI/QVZMtmsDL70x+yw29ApsCkec833RFfHnO1E7iM811wr1iP9htGacIvLefyO1Skk9qvo3ImfaI/lixWis8Qf+iaP2WIqrh35PvygCuT5aR082MQbx1Vv4Zq6SVMbN3xUAqmSHRwaU1ybB67BZE/fKVDpdycbFiGHB4rh/sm+xq/mT8iC8xRspRzF3lDhNLotO+Ku6nBp0vifkHYtFCseqVaLjKmo1KUr9OQbRn1bGJkRoURmOs5zNyu2CtHlrP/Ym8E6K8KIIK7wjslY+wNBxGzikezw==',
        require => File['/home/bethdowney/.ssh']
    }

}
