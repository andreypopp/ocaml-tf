(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type user = {
  email : string prop;
  first_name : string prop;
  last_name : string prop;
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user) -> ()

let yojson_of_user =
  (function
   | {
       email = v_email;
       first_name = v_first_name;
       last_name = v_last_name;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_name in
         ("last_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_name in
         ("first_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user

[@@@deriving.end]

type azurerm_logz_sub_account = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  logz_monitor_id : string prop;
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
  user : user list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logz_sub_account) -> ()

let yojson_of_azurerm_logz_sub_account =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       logz_monitor_id = v_logz_monitor_id;
       name = v_name;
       tags = v_tags;
       timeouts = v_timeouts;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user then bnds
         else
           let arg = (yojson_of_list yojson_of_user) v_user in
           let bnd = "user", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logz_monitor_id
         in
         ("logz_monitor_id", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_logz_sub_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logz_sub_account

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user ~email ~first_name ~last_name ~phone_number () : user =
  { email; first_name; last_name; phone_number }

let azurerm_logz_sub_account ?enabled ?id ?tags ?timeouts
    ~logz_monitor_id ~name ~user () : azurerm_logz_sub_account =
  { enabled; id; logz_monitor_id; name; tags; timeouts; user }

type t = {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  logz_monitor_id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?enabled ?id ?tags ?timeouts ~logz_monitor_id ~name ~user
    __id =
  let __type = "azurerm_logz_sub_account" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       logz_monitor_id = Prop.computed __type __id "logz_monitor_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logz_sub_account
        (azurerm_logz_sub_account ?enabled ?id ?tags ?timeouts
           ~logz_monitor_id ~name ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?timeouts ~logz_monitor_id
    ~name ~user __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ?timeouts ~logz_monitor_id ~name ~user
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
