class hardening {

    package {'ufw': ensure => 'installed' }

    include ufw

    # Basic firewall rules
    ufw::allow { 'allow-ssh-from-all':
        port => 5344,
    }

    # rate-limit SSH
    ufw::limit { 22: }

    ufw::allow { 'allow-ssh-from-all':
        port => 80,
    }

    ufw::allow { 'allow-ssh-from-all':
        port => 443,
    }

}
