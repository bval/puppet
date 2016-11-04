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

}
