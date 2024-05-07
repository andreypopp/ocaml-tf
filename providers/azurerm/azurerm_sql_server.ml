(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
  email_account_admins : bool prop option; [@option]
  email_addresses : string prop list option; [@option]
  retention_days : float prop option; [@option]
  state : string prop option; [@option]
  storage_account_access_key : string prop option; [@option]
  storage_endpoint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_detection_policy) -> ()

let yojson_of_threat_detection_policy =
  (function
   | {
       disabled_alerts = v_disabled_alerts;
       email_account_admins = v_email_account_admins;
       email_addresses = v_email_addresses;
       retention_days = v_retention_days;
       state = v_state;
       storage_account_access_key = v_storage_account_access_key;
       storage_endpoint = v_storage_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_access_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_access_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_account_admins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "email_account_admins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled_alerts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_alerts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : threat_detection_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_detection_policy

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

type azurerm_sql_server = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  connection_policy : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  version : string prop;
  identity : identity list;
  threat_detection_policy : threat_detection_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sql_server) -> ()

let yojson_of_azurerm_sql_server =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_login_password = v_administrator_login_password;
       connection_policy = v_connection_policy;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       version = v_version;
       identity = v_identity;
       threat_detection_policy = v_threat_detection_policy;
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
           yojson_of_list yojson_of_threat_detection_policy
             v_threat_detection_policy
         in
         ("threat_detection_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
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
       let bnds =
         match v_connection_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_administrator_login_password
         in
         ("administrator_login_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_administrator_login
         in
         ("administrator_login", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_sql_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sql_server

[@@@deriving.end]

let identity ~type_ () : identity = { type_ }

let threat_detection_policy ?disabled_alerts ?email_account_admins
    ?email_addresses ?retention_days ?state
    ?storage_account_access_key ?storage_endpoint () :
    threat_detection_policy =
  {
    disabled_alerts;
    email_account_admins;
    email_addresses;
    retention_days;
    state;
    storage_account_access_key;
    storage_endpoint;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_server ?connection_policy ?id ?tags ?(identity = [])
    ?(threat_detection_policy = []) ?timeouts ~administrator_login
    ~administrator_login_password ~location ~name
    ~resource_group_name ~version () : azurerm_sql_server =
  {
    administrator_login;
    administrator_login_password;
    connection_policy;
    id;
    location;
    name;
    resource_group_name;
    tags;
    version;
    identity;
    threat_detection_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  administrator_login : string prop;
  administrator_login_password : string prop;
  connection_policy : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?connection_policy ?id ?tags ?(identity = [])
    ?(threat_detection_policy = []) ?timeouts ~administrator_login
    ~administrator_login_password ~location ~name
    ~resource_group_name ~version __id =
  let __type = "azurerm_sql_server" in
  let __attrs =
    ({
       tf_name = __id;
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       connection_policy =
         Prop.computed __type __id "connection_policy";
       fully_qualified_domain_name =
         Prop.computed __type __id "fully_qualified_domain_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_server
        (azurerm_sql_server ?connection_policy ?id ?tags ~identity
           ~threat_detection_policy ?timeouts ~administrator_login
           ~administrator_login_password ~location ~name
           ~resource_group_name ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?connection_policy ?id ?tags ?(identity = [])
    ?(threat_detection_policy = []) ?timeouts ~administrator_login
    ~administrator_login_password ~location ~name
    ~resource_group_name ~version __id =
  let (r : _ Tf_core.resource) =
    make ?connection_policy ?id ?tags ~identity
      ~threat_detection_policy ?timeouts ~administrator_login
      ~administrator_login_password ~location ~name
      ~resource_group_name ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
