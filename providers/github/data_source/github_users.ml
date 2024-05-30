(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_users = {
  id : string prop option; [@option]
  usernames : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_users) -> ()

let yojson_of_github_users =
  (function
   | { id = v_id; usernames = v_usernames } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_usernames then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_usernames
           in
           let bnd = "usernames", arg in
           bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_users

[@@@deriving.end]

let github_users ?id ~usernames () : github_users = { id; usernames }

type t = {
  tf_name : string;
  emails : string list prop;
  id : string prop;
  logins : string list prop;
  node_ids : string list prop;
  unknown_logins : string list prop;
  usernames : string list prop;
}

let make ?id ~usernames __id =
  let __type = "github_users" in
  let __attrs =
    ({
       tf_name = __id;
       emails = Prop.computed __type __id "emails";
       id = Prop.computed __type __id "id";
       logins = Prop.computed __type __id "logins";
       node_ids = Prop.computed __type __id "node_ids";
       unknown_logins = Prop.computed __type __id "unknown_logins";
       usernames = Prop.computed __type __id "usernames";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_github_users (github_users ?id ~usernames ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~usernames __id =
  let (r : _ Tf_core.resource) = make ?id ~usernames __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
