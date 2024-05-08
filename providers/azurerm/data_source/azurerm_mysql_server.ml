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

type identity = {
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type threat_detection_policy = {
  disabled_alerts : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  email_account_admins : bool prop;
  email_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  enabled : bool prop;
  retention_days : float prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : threat_detection_policy) -> ()

let yojson_of_threat_detection_policy =
  (function
   | {
       disabled_alerts = v_disabled_alerts;
       email_account_admins = v_email_account_admins;
       email_addresses = v_email_addresses;
       enabled = v_enabled;
       retention_days = v_retention_days;
       storage_account_access_key = v_storage_account_access_key;
       storage_endpoint = v_storage_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_endpoint
         in
         ("storage_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_account_access_key
         in
         ("storage_account_access_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_retention_days in
         ("retention_days", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         if [] = v_email_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_email_addresses
           in
           let bnd = "email_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_email_account_admins
         in
         ("email_account_admins", arg) :: bnds
       in
       let bnds =
         if [] = v_disabled_alerts then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_disabled_alerts
           in
           let bnd = "disabled_alerts", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : threat_detection_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_threat_detection_policy

[@@@deriving.end]

type azurerm_mysql_server = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mysql_server) -> ()

let yojson_of_azurerm_mysql_server =
  (function
   | {
       id = v_id;
       name = v_name;
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
    : azurerm_mysql_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mysql_server

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mysql_server ?id ?timeouts ~name ~resource_group_name ()
    : azurerm_mysql_server =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  administrator_login : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  identity : identity list prop;
  infrastructure_encryption_enabled : bool prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  ssl_enforcement_enabled : bool prop;
  ssl_minimal_tls_version_enforced : string prop;
  storage_mb : float prop;
  tags : (string * string) list prop;
  threat_detection_policy : threat_detection_policy list prop;
  version : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_mysql_server" in
  let __attrs =
    ({
       tf_name = __id;
       administrator_login =
         Prop.computed __type __id "administrator_login";
       auto_grow_enabled =
         Prop.computed __type __id "auto_grow_enabled";
       backup_retention_days =
         Prop.computed __type __id "backup_retention_days";
       fqdn = Prop.computed __type __id "fqdn";
       geo_redundant_backup_enabled =
         Prop.computed __type __id "geo_redundant_backup_enabled";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       infrastructure_encryption_enabled =
         Prop.computed __type __id
           "infrastructure_encryption_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restore_point_in_time =
         Prop.computed __type __id "restore_point_in_time";
       sku_name = Prop.computed __type __id "sku_name";
       ssl_enforcement_enabled =
         Prop.computed __type __id "ssl_enforcement_enabled";
       ssl_minimal_tls_version_enforced =
         Prop.computed __type __id "ssl_minimal_tls_version_enforced";
       storage_mb = Prop.computed __type __id "storage_mb";
       tags = Prop.computed __type __id "tags";
       threat_detection_policy =
         Prop.computed __type __id "threat_detection_policy";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mysql_server
        (azurerm_mysql_server ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
