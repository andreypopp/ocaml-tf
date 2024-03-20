(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type apns_credential = {
  application_mode : string prop;
  bundle_id : string prop;
  key_id : string prop;
  team_id : string prop;
  token : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : apns_credential) -> ()

let yojson_of_apns_credential =
  (function
   | {
       application_mode = v_application_mode;
       bundle_id = v_bundle_id;
       key_id = v_key_id;
       team_id = v_team_id;
       token = v_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_token in
         ("token", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_team_id in
         ("team_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bundle_id in
         ("bundle_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_mode
         in
         ("application_mode", arg) :: bnds
       in
       `Assoc bnds
    : apns_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_apns_credential

[@@@deriving.end]

type gcm_credential = { api_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : gcm_credential) -> ()

let yojson_of_gcm_credential =
  (function
   | { api_key = v_api_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : gcm_credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gcm_credential

[@@@deriving.end]

type azurerm_notification_hub = {
  id : string prop option; [@option]
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_notification_hub) -> ()

let yojson_of_azurerm_notification_hub =
  (function
   | {
       id = v_id;
       name = v_name;
       namespace_name = v_namespace_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_notification_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_notification_hub

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_notification_hub ?id ?timeouts ~name ~namespace_name
    ~resource_group_name () : azurerm_notification_hub =
  { id; name; namespace_name; resource_group_name; timeouts }

type t = {
  apns_credential : apns_credential list prop;
  gcm_credential : gcm_credential list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~namespace_name ~resource_group_name
    __id =
  let __type = "azurerm_notification_hub" in
  let __attrs =
    ({
       apns_credential = Prop.computed __type __id "apns_credential";
       gcm_credential = Prop.computed __type __id "gcm_credential";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_notification_hub
        (azurerm_notification_hub ?id ?timeouts ~name ~namespace_name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~namespace_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~namespace_name ~resource_group_name
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
