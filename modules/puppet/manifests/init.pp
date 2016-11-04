class puppet {
    file { '/etc/puppet/puppet.conf':
        owner   => root,
        group   => root,
        mode    => 644,
        source  => 'puppet://modules/puppet/puppet.conf'
    }

    file { 'post-hook':
        ensure  => file,
        path    => '/etc/puppet/.git/hooks/post-merge',
        source  => 'puppet:///modules/puppet/post-merge',
        mode    => 0755,
        owner   => root,
        group   => root,
    }

    cron { 'puppet-apply':
        ensure  => present,
        command => "cd /etc/puppet ; /usr/bin/git pull",
        user    => root,
        minute  => '*/30',
        require => File['post-hook'],
    }

}
