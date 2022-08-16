#
#
#
class base::os::linux {
    class { 'python':
        version => 'python3',
        pip     => 'present',
        dev     => 'present',
    }
}
