# puppet apply -v manifests/init.pp --modulepath=modules/ --noop --test
# puppet apply -v manifests/init.pp --modulepath=modules/

# misc packages
package { [
    'vim',
    'git-core',
  ]:
  ensure  => 'installed',
}

