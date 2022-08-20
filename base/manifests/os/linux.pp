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
    include sudo
    class {
        'ssh':
    }

    class { 'hosts':
        host_entries => {
            puppet => {
                ip => '127.0.0.1',
                host_aliases => ['puppet', 'puppetdb']
            }
        }
    }

}
