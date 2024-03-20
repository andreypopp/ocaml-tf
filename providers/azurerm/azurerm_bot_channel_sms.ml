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

type azurerm_bot_channel_sms = {
  bot_name : string prop;
  id : string prop option; [@option]
  location : string prop;
  phone_number : string prop;
  resource_group_name : string prop;
  sms_channel_account_security_id : string prop;
  sms_channel_auth_token : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channel_sms) -> ()

let yojson_of_azurerm_bot_channel_sms =
  (function
   | {
       bot_name = v_bot_name;
       id = v_id;
       location = v_location;
       phone_number = v_phone_number;
       resource_group_name = v_resource_group_name;
       sms_channel_account_security_id =
         v_sms_channel_account_security_id;
       sms_channel_auth_token = v_sms_channel_auth_token;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sms_channel_auth_token
         in
         ("sms_channel_auth_token", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_sms_channel_account_security_id
         in
         ("sms_channel_account_security_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_bot_channel_sms -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channel_sms

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_sms ?id ?timeouts ~bot_name ~location
    ~phone_number ~resource_group_name
    ~sms_channel_account_security_id ~sms_channel_auth_token () :
    azurerm_bot_channel_sms =
  {
    bot_name;
    id;
    location;
    phone_number;
    resource_group_name;
    sms_channel_account_security_id;
    sms_channel_auth_token;
    timeouts;
  }

type t = {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  phone_number : string prop;
  resource_group_name : string prop;
  sms_channel_account_security_id : string prop;
  sms_channel_auth_token : string prop;
}

let make ?id ?timeouts ~bot_name ~location ~phone_number
    ~resource_group_name ~sms_channel_account_security_id
    ~sms_channel_auth_token __id =
  let __type = "azurerm_bot_channel_sms" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       phone_number = Prop.computed __type __id "phone_number";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sms_channel_account_security_id =
         Prop.computed __type __id "sms_channel_account_security_id";
       sms_channel_auth_token =
         Prop.computed __type __id "sms_channel_auth_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channel_sms
        (azurerm_bot_channel_sms ?id ?timeouts ~bot_name ~location
           ~phone_number ~resource_group_name
           ~sms_channel_account_security_id ~sms_channel_auth_token
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bot_name ~location
    ~phone_number ~resource_group_name
    ~sms_channel_account_security_id ~sms_channel_auth_token __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bot_name ~location ~phone_number
      ~resource_group_name ~sms_channel_account_security_id
      ~sms_channel_auth_token __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
