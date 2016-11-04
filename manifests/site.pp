# puppet apply -v manifests/init.pp --modulepath=modules/ --noop --test
# puppet apply -v manifests/init.pp --modulepath=modules/

node default {
    # puppet config
    include puppet


class { '::mysql::server':
  root_password           => hiera('mysql_root_password'),
  remove_default_accounts => true,
}

    # misc packages
    package { [
        'vim',
        'git-core',
    ]:
        ensure  => 'installed',
    }
}
