#
#
#
class ops::nodes::aio inherits base {
    include accounts::user::all
    include ops::roles::docker

    group {
        'penrose':
    }

    Accounts::User <| groups == 'penrose' |> {
        groups  +> ['users'],
    }
    class { 'sudo::allow':
       add_users  => ['ubuntu'],
       add_groups => ['penrose'],
    }

    include puppet_server
}
