(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_group_memberships = {
  group_id : string prop;
  id : string prop option; [@option]
  track_all_users : bool prop option; [@option]
  users : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_group_memberships) -> ()

let yojson_of_okta_group_memberships =
  (function
   | {
       group_id = v_group_id;
       id = v_id;
       track_all_users = v_track_all_users;
       users = v_users;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_users then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_users
           in
           let bnd = "users", arg in
           bnd :: bnds
       in
       let bnds =
         match v_track_all_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "track_all_users", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_group_memberships -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_group_memberships

[@@@deriving.end]

let okta_group_memberships ?id ?track_all_users ~group_id ~users () :
    okta_group_memberships =
  { group_id; id; track_all_users; users }

type t = {
  tf_name : string;
  group_id : string prop;
  id : string prop;
  track_all_users : bool prop;
  users : string list prop;
}

let make ?id ?track_all_users ~group_id ~users __id =
  let __type = "okta_group_memberships" in
  let __attrs =
    ({
       tf_name = __id;
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       track_all_users = Prop.computed __type __id "track_all_users";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_group_memberships
        (okta_group_memberships ?id ?track_all_users ~group_id ~users
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?track_all_users ~group_id ~users __id =
  let (r : _ Tf_core.resource) =
    make ?id ?track_all_users ~group_id ~users __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
