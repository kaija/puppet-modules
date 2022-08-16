#
#
#
class base::os {

    if ($::operatingsystem == 'Ubuntu') {
        include base::os::linux
        include base::os::ubuntu
    } eksuf ($::operatingsystem == 'CentOS') { # add centos related here
        include base::os::linux
    } elsif ($::operatingsystem == 'windows') {
        include base::os::windows
    } else {
        fail("${::operatingsystem} not support")
    }

}
