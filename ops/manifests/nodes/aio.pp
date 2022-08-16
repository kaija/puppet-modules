#
#
#
class ops::nodes::aio inherits base {
    include accounts::user::all

    Accounts::user <| groups == 'penrose' |> {
	groups +> ['sudo']
    }
}
