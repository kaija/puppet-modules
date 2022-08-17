#
#
#
class accounts::user::all {

    @accounts::user {
        'kaija':
            groups => ['penrose'];
    }
}
