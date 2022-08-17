#
#
#
class base::os::linux {

    include cron

    include firewalld

    class { 'python':
        version => 'python3',
        pip     => 'present',
        dev     => 'present',
    }
}
