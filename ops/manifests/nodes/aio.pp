#
#
#
class ops::nodes::aio inherits base {
    include accounts::user::all

    class {
        'ssh':
    }

    group {
        'penrose':
    }

    Accounts::User <| groups == 'penrose' |> {
        groups  +> ['users'],
    }

}
