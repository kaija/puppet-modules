#
#
#
class ops::nodes::aio inherits base {
    include accounts::user::all

    include ops::roles::influxdb

    group {
        'penrose':
    }

    Accounts::User <| groups == 'penrose' |> {
        groups  +> ['users'],
    }

}
