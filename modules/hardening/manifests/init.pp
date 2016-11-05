class hardening {

    include ufw

    # Basic firewall rules
    ufw::allow { 'allow-ssh-from-all':
        port => '5344',
    }

    # rate-limit SSH
    ufw::limit { '5344': }

    ufw::allow { 'allow-http-from-all':
        port => '80',
    }

    ufw::allow { 'allow-https-from-all':
        port => '443',
    }

    # More sane SSH config
    file { '/etc/ssh/sshd_config':
        ensure => 'present',
        source => 'puppet:///modules/hardening/sshd_config',
        notify => Service['ssh'],
    }

    service { 'ssh':
        ensure  => 'running',
        enable  => true,
        require => Package['openssh-server'],
    }



}
