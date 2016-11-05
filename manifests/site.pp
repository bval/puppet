# puppet apply -v manifests/site.pp --modulepath=modules/ --noop --test
# puppet apply -v manifests/site.pp --modulepath=modules/

node default {
    # puppet config
    include puppet

    # adds our users and ssh keys
    include users

    # basic LAMP config for wordpress
    include lamp

    # Basic hardening/security stuff
    include hardening

    # misc packages
    package { [
        'vim',
        'git-core',
    ]:
        ensure  => 'installed',
    }
}
