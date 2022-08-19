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

    include puppet_operational_dashboards
}
