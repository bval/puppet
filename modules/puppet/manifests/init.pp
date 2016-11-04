class puppet::client {
    file { '/etc/puppet/puppet.conf':
        owner   => root,
        group   => root,
        mode    => 644,
        source  => 'puppet://modules/puppet/puppet.conf'
    }
}
