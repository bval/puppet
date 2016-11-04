# puppet apply -v manifests/init.pp --modulepath=modules/ --noop --test
# puppet apply -v manifests/init.pp --modulepath=modules/

node default {
    # puppet config
    include puppet

    # adds our users and ssh keys
    include users

    # basic LAMP config for wordpress
    include lamp

    # misc packages
    package { [
        'vim',
        'git-core',
    ]:
        ensure  => 'installed',
    }
}
