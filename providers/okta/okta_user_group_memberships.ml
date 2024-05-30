(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_user_group_memberships = {
  groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user_group_memberships) -> ()

let yojson_of_okta_user_group_memberships =
  (function
   | { groups = v_groups; id = v_id; user_id = v_user_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
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
         if Stdlib.( = ) [] v_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_groups
           in
           let bnd = "groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : okta_user_group_memberships ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user_group_memberships

[@@@deriving.end]

let okta_user_group_memberships ?id ~groups ~user_id () :
    okta_user_group_memberships =
  { groups; id; user_id }

type t = {
  tf_name : string;
  groups : string list prop;
  id : string prop;
  user_id : string prop;
}

let make ?id ~groups ~user_id __id =
  let __type = "okta_user_group_memberships" in
  let __attrs =
    ({
       tf_name = __id;
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user_group_memberships
        (okta_user_group_memberships ?id ~groups ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~groups ~user_id __id =
  let (r : _ Tf_core.resource) = make ?id ~groups ~user_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
