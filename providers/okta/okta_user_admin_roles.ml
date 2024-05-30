(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_user_admin_roles = {
  admin_roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disable_notifications : bool prop option; [@option]
  id : string prop option; [@option]
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user_admin_roles) -> ()

let yojson_of_okta_user_admin_roles =
  (function
   | {
       admin_roles = v_admin_roles;
       disable_notifications = v_disable_notifications;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_notifications with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_notifications", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_roles then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_admin_roles
           in
           let bnd = "admin_roles", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : okta_user_admin_roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user_admin_roles

[@@@deriving.end]

let okta_user_admin_roles ?disable_notifications ?id ~admin_roles
    ~user_id () : okta_user_admin_roles =
  { admin_roles; disable_notifications; id; user_id }

type t = {
  tf_name : string;
  admin_roles : string list prop;
  disable_notifications : bool prop;
  id : string prop;
  user_id : string prop;
}

let make ?disable_notifications ?id ~admin_roles ~user_id __id =
  let __type = "okta_user_admin_roles" in
  let __attrs =
    ({
       tf_name = __id;
       admin_roles = Prop.computed __type __id "admin_roles";
       disable_notifications =
         Prop.computed __type __id "disable_notifications";
       id = Prop.computed __type __id "id";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user_admin_roles
        (okta_user_admin_roles ?disable_notifications ?id
           ~admin_roles ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_notifications ?id ~admin_roles
    ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?disable_notifications ?id ~admin_roles ~user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
