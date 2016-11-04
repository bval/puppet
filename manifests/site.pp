# puppet apply -v manifests/init.pp --modulepath=modules/ --noop --test
# puppet apply -v manifests/init.pp --modulepath=modules/

node default {
    # puppet config
    include puppet

    # misc packages
    package { [
        'vim',
        'git-core',
    ]:
        ensure  => 'installed',
    }
}
