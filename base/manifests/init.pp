#
#
#
class base {
    include stdlib
    class {'base::os':}
    hiera_include('extra_classes')
}
