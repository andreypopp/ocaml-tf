(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_group_role = {
  disable_notifications : bool prop option; [@option]
  group_id : string prop;
  id : string prop option; [@option]
  role_type : string prop;
  target_app_list : string prop list option; [@option]
  target_group_list : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_group_role) -> ()

let yojson_of_okta_group_role =
  (function
   | {
       disable_notifications = v_disable_notifications;
       group_id = v_group_id;
       id = v_id;
       role_type = v_role_type;
       target_app_list = v_target_app_list;
       target_group_list = v_target_group_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_group_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_group_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_app_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_app_list", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       let bnds =
         match v_disable_notifications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_notifications", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_group_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_group_role

[@@@deriving.end]

let okta_group_role ?disable_notifications ?id ?target_app_list
    ?target_group_list ~group_id ~role_type () : okta_group_role =
  {
    disable_notifications;
    group_id;
    id;
    role_type;
    target_app_list;
    target_group_list;
  }

type t = {
  tf_name : string;
  disable_notifications : bool prop;
  group_id : string prop;
  id : string prop;
  role_type : string prop;
  target_app_list : string list prop;
  target_group_list : string list prop;
}

let make ?disable_notifications ?id ?target_app_list
    ?target_group_list ~group_id ~role_type __id =
  let __type = "okta_group_role" in
  let __attrs =
    ({
       tf_name = __id;
       disable_notifications =
         Prop.computed __type __id "disable_notifications";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       role_type = Prop.computed __type __id "role_type";
       target_app_list = Prop.computed __type __id "target_app_list";
       target_group_list =
         Prop.computed __type __id "target_group_list";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_group_role
        (okta_group_role ?disable_notifications ?id ?target_app_list
           ?target_group_list ~group_id ~role_type ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_notifications ?id ?target_app_list
    ?target_group_list ~group_id ~role_type __id =
  let (r : _ Tf_core.resource) =
    make ?disable_notifications ?id ?target_app_list
      ?target_group_list ~group_id ~role_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
