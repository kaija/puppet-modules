#
#
#
class puppet_server {
    systemd::unit_file { 'puppet-server.service':
        source => "puppet:///modules/${module_name}/puppet-server.service",
    }
    ~> service {'puppet-server':
        ensure => 'running',
        enable => true,
    }
}
