(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_notification_hub = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  apns_credential : apns_credential list;
  gcm_credential : gcm_credential list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_notification_hub) -> ()

let yojson_of_azurerm_notification_hub =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       namespace_name = v_namespace_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       apns_credential = v_apns_credential;
       gcm_credential = v_gcm_credential;
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
           yojson_of_list yojson_of_gcm_credential v_gcm_credential
         in
         ("gcm_credential", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_apns_credential v_apns_credential
         in
         ("apns_credential", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
       `Assoc bnds
    : azurerm_notification_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_notification_hub

[@@@deriving.end]

let apns_credential ~application_mode ~bundle_id ~key_id ~team_id
    ~token () : apns_credential =
  { application_mode; bundle_id; key_id; team_id; token }

let gcm_credential ~api_key () : gcm_credential = { api_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_notification_hub ?id ?tags ?timeouts ~location ~name
    ~namespace_name ~resource_group_name ~apns_credential
    ~gcm_credential () : azurerm_notification_hub =
  {
    id;
    location;
    name;
    namespace_name;
    resource_group_name;
    tags;
    apns_credential;
    gcm_credential;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~namespace_name
    ~resource_group_name ~apns_credential ~gcm_credential __id =
  let __type = "azurerm_notification_hub" in
  let __attrs =
    ({
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
        (azurerm_notification_hub ?id ?tags ?timeouts ~location ~name
           ~namespace_name ~resource_group_name ~apns_credential
           ~gcm_credential ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~namespace_name ~resource_group_name ~apns_credential
    ~gcm_credential __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~namespace_name
      ~resource_group_name ~apns_credential ~gcm_credential __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
