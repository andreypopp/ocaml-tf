(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_admin_role_targets = {
  apps : string prop list option; [@option]
  groups : string prop list option; [@option]
  id : string prop option; [@option]
  role_type : string prop;
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_admin_role_targets) -> ()

let yojson_of_okta_admin_role_targets =
  (function
   | {
       apps = v_apps;
       groups = v_groups;
       id = v_id;
       role_type = v_role_type;
       user_id = v_user_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_type in
         ("role_type", arg) :: bnds
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
         match v_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "apps", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_admin_role_targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_admin_role_targets

[@@@deriving.end]

let okta_admin_role_targets ?apps ?groups ?id ~role_type ~user_id ()
    : okta_admin_role_targets =
  { apps; groups; id; role_type; user_id }

type t = {
  tf_name : string;
  apps : string list prop;
  groups : string list prop;
  id : string prop;
  role_id : string prop;
  role_type : string prop;
  user_id : string prop;
}

let make ?apps ?groups ?id ~role_type ~user_id __id =
  let __type = "okta_admin_role_targets" in
  let __attrs =
    ({
       tf_name = __id;
       apps = Prop.computed __type __id "apps";
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       role_id = Prop.computed __type __id "role_id";
       role_type = Prop.computed __type __id "role_type";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_admin_role_targets
        (okta_admin_role_targets ?apps ?groups ?id ~role_type
           ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?apps ?groups ?id ~role_type ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?apps ?groups ?id ~role_type ~user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
