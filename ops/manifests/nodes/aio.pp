#
#
#
class ops::nodes::aio inherits base {
    include accounts::user::all

    group {
        'penrose':
    }

    Accounts::User <| groups == 'penrose' |> {
        groups  +> ['users'],
    }

}
