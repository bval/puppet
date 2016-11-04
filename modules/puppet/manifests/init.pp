# Base puppet configuration and cron to run regularly
class puppet {

    package {'puppet': ensure => 'installed' }

    file { '/etc/puppet/puppet.conf':
        owner  => root,
        group  => root,
        mode   => '0644',
        source => 'puppet:///modules/puppet/puppet.conf'
    }

    file { 'post-hook':
        ensure => file,
        path   => '/etc/puppet/.git/hooks/post-merge',
        source => 'puppet:///modules/puppet/post-merge',
        mode   => '0755',
        owner  => root,
        group  => root,
    }

    cron { 'puppet-apply':
        ensure  => present,
        command => 'cd /etc/puppet ; /usr/bin/git pull',
        user    => root,
        minute  => '*/5',
        require => File['post-hook'],
    }

}
