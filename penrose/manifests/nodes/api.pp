#
#
#
class penrose::nodes::api {
    $test = hiera('test', 'alpha')
    notify{"$::application $::node":}
    notify{"$test":}
    package {'openjdk-8-jdk-headless':
        ensure => installed,
    }
}
