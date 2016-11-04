# puppet
Initial buildout of puppet management for nashvillest.com

This is geared towards a masterless setup, since this is a small one-off server. Runs out of cron. See [the puppet module](https://github.com/nashvillest/puppet/blob/master/modules/puppet/manifests/init.pp) for the config. Currently puppet runs every 5 minutes, via a git pull in /etc/puppet which calls the post-merge hook that actually runs puppet. (Note sure if this is Too Clever, but it works.)

Note: secure data (right now just mysql password) is pulled in via a separate secure hiera repo (currently owned by me).
