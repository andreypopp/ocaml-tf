(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication = {
  active_directory_auth_enabled : bool prop option; [@option]
  password_auth_enabled : bool prop option; [@option]
  tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication) -> ()

let yojson_of_authentication =
  (function
   | {
       active_directory_auth_enabled =
         v_active_directory_auth_enabled;
       password_auth_enabled = v_password_auth_enabled;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_auth_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active_directory_auth_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication

[@@@deriving.end]

type customer_managed_key = {
  geo_backup_key_vault_key_id : string prop option; [@option]
  geo_backup_user_assigned_identity_id : string prop option;
      [@option]
  key_vault_key_id : string prop;
  primary_user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : customer_managed_key) -> ()

let yojson_of_customer_managed_key =
  (function
   | {
       geo_backup_key_vault_key_id = v_geo_backup_key_vault_key_id;
       geo_backup_user_assigned_identity_id =
         v_geo_backup_user_assigned_identity_id;
       key_vault_key_id = v_key_vault_key_id;
       primary_user_assigned_identity_id =
         v_primary_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       let bnds =
         match v_geo_backup_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "geo_backup_user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_geo_backup_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "geo_backup_key_vault_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : customer_managed_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_customer_managed_key

[@@@deriving.end]

type high_availability = {
  mode : string prop;
  standby_availability_zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : high_availability) -> ()

let yojson_of_high_availability =
  (function
   | {
       mode = v_mode;
       standby_availability_zone = v_standby_availability_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_standby_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "standby_availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : high_availability -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_high_availability

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type maintenance_window = {
  day_of_week : float prop option; [@option]
  start_hour : float prop option; [@option]
  start_minute : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | {
       day_of_week = v_day_of_week;
       start_hour = v_start_hour;
       start_minute = v_start_minute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_minute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_hour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_hour", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day_of_week", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

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

type azurerm_postgresql_flexible_server = {
  administrator_login : string prop option; [@option]
  administrator_password : string prop option; [@option]
  auto_grow_enabled : bool prop option; [@option]
  backup_retention_days : float prop option; [@option]
  create_mode : string prop option; [@option]
  delegated_subnet_id : string prop option; [@option]
  geo_redundant_backup_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  point_in_time_restore_time_in_utc : string prop option; [@option]
  private_dns_zone_id : string prop option; [@option]
  replication_role : string prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop option; [@option]
  source_server_id : string prop option; [@option]
  storage_mb : float prop option; [@option]
  storage_tier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  version : string prop option; [@option]
  zone : string prop option; [@option]
  authentication : authentication list;
  customer_managed_key : customer_managed_key list;
  high_availability : high_availability list;
  identity : identity list;
  maintenance_window : maintenance_window list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_postgresql_flexible_server) -> ()

let yojson_of_azurerm_postgresql_flexible_server =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_password = v_administrator_password;
       auto_grow_enabled = v_auto_grow_enabled;
       backup_retention_days = v_backup_retention_days;
       create_mode = v_create_mode;
       delegated_subnet_id = v_delegated_subnet_id;
       geo_redundant_backup_enabled = v_geo_redundant_backup_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       point_in_time_restore_time_in_utc =
         v_point_in_time_restore_time_in_utc;
       private_dns_zone_id = v_private_dns_zone_id;
       replication_role = v_replication_role;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       source_server_id = v_source_server_id;
       storage_mb = v_storage_mb;
       storage_tier = v_storage_tier;
       tags = v_tags;
       version = v_version;
       zone = v_zone;
       authentication = v_authentication;
       customer_managed_key = v_customer_managed_key;
       high_availability = v_high_availability;
       identity = v_identity;
       maintenance_window = v_maintenance_window;
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
           yojson_of_list yojson_of_maintenance_window
             v_maintenance_window
         in
         ("maintenance_window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_high_availability
             v_high_availability
         in
         ("high_availability", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_customer_managed_key
             v_customer_managed_key
         in
         ("customer_managed_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication v_authentication
         in
         ("authentication", arg) :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
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
         match v_storage_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_server_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_server_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_replication_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_dns_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_dns_zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_point_in_time_restore_time_in_utc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "point_in_time_restore_time_in_utc", arg in
             bnd :: bnds
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
         match v_geo_redundant_backup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "geo_redundant_backup_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delegated_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delegated_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backup_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_grow_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_grow_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_login with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_login", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_postgresql_flexible_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_postgresql_flexible_server

[@@@deriving.end]

let authentication ?active_directory_auth_enabled
    ?password_auth_enabled ?tenant_id () : authentication =
  { active_directory_auth_enabled; password_auth_enabled; tenant_id }

let customer_managed_key ?geo_backup_key_vault_key_id
    ?geo_backup_user_assigned_identity_id
    ?primary_user_assigned_identity_id ~key_vault_key_id () :
    customer_managed_key =
  {
    geo_backup_key_vault_key_id;
    geo_backup_user_assigned_identity_id;
    key_vault_key_id;
    primary_user_assigned_identity_id;
  }

let high_availability ?standby_availability_zone ~mode () :
    high_availability =
  { mode; standby_availability_zone }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let maintenance_window ?day_of_week ?start_hour ?start_minute () :
    maintenance_window =
  { day_of_week; start_hour; start_minute }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_flexible_server ?administrator_login
    ?administrator_password ?auto_grow_enabled ?backup_retention_days
    ?create_mode ?delegated_subnet_id ?geo_redundant_backup_enabled
    ?id ?point_in_time_restore_time_in_utc ?private_dns_zone_id
    ?replication_role ?sku_name ?source_server_id ?storage_mb
    ?storage_tier ?tags ?version ?zone ?timeouts ~location ~name
    ~resource_group_name ~authentication ~customer_managed_key
    ~high_availability ~identity ~maintenance_window () :
    azurerm_postgresql_flexible_server =
  {
    administrator_login;
    administrator_password;
    auto_grow_enabled;
    backup_retention_days;
    create_mode;
    delegated_subnet_id;
    geo_redundant_backup_enabled;
    id;
    location;
    name;
    point_in_time_restore_time_in_utc;
    private_dns_zone_id;
    replication_role;
    resource_group_name;
    sku_name;
    source_server_id;
    storage_mb;
    storage_tier;
    tags;
    version;
    zone;
    authentication;
    customer_managed_key;
    high_availability;
    identity;
    maintenance_window;
    timeouts;
  }

type t = {
  administrator_login : string prop;
  administrator_password : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  delegated_subnet_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  point_in_time_restore_time_in_utc : string prop;
  private_dns_zone_id : string prop;
  public_network_access_enabled : bool prop;
  replication_role : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  source_server_id : string prop;
  storage_mb : float prop;
  storage_tier : string prop;
  tags : (string * string) list prop;
  version : string prop;
  zone : string prop;
}

let make ?administrator_login ?administrator_password
    ?auto_grow_enabled ?backup_retention_days ?create_mode
    ?delegated_subnet_id ?geo_redundant_backup_enabled ?id
    ?point_in_time_restore_time_in_utc ?private_dns_zone_id
    ?replication_role ?sku_name ?source_server_id ?storage_mb
    ?storage_tier ?tags ?version ?zone ?timeouts ~location ~name
    ~resource_group_name ~authentication ~customer_managed_key
    ~high_availability ~identity ~maintenance_window __id =
  let __type = "azurerm_postgresql_flexible_server" in
  let __attrs =
    ({
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_password =
         Prop.computed __type __id "administrator_password";
       auto_grow_enabled =
         Prop.computed __type __id "auto_grow_enabled";
       backup_retention_days =
         Prop.computed __type __id "backup_retention_days";
       create_mode = Prop.computed __type __id "create_mode";
       delegated_subnet_id =
         Prop.computed __type __id "delegated_subnet_id";
       fqdn = Prop.computed __type __id "fqdn";
       geo_redundant_backup_enabled =
         Prop.computed __type __id "geo_redundant_backup_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       point_in_time_restore_time_in_utc =
         Prop.computed __type __id
           "point_in_time_restore_time_in_utc";
       private_dns_zone_id =
         Prop.computed __type __id "private_dns_zone_id";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       replication_role =
         Prop.computed __type __id "replication_role";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       source_server_id =
         Prop.computed __type __id "source_server_id";
       storage_mb = Prop.computed __type __id "storage_mb";
       storage_tier = Prop.computed __type __id "storage_tier";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_postgresql_flexible_server
        (azurerm_postgresql_flexible_server ?administrator_login
           ?administrator_password ?auto_grow_enabled
           ?backup_retention_days ?create_mode ?delegated_subnet_id
           ?geo_redundant_backup_enabled ?id
           ?point_in_time_restore_time_in_utc ?private_dns_zone_id
           ?replication_role ?sku_name ?source_server_id ?storage_mb
           ?storage_tier ?tags ?version ?zone ?timeouts ~location
           ~name ~resource_group_name ~authentication
           ~customer_managed_key ~high_availability ~identity
           ~maintenance_window ());
    attrs = __attrs;
  }

let register ?tf_module ?administrator_login ?administrator_password
    ?auto_grow_enabled ?backup_retention_days ?create_mode
    ?delegated_subnet_id ?geo_redundant_backup_enabled ?id
    ?point_in_time_restore_time_in_utc ?private_dns_zone_id
    ?replication_role ?sku_name ?source_server_id ?storage_mb
    ?storage_tier ?tags ?version ?zone ?timeouts ~location ~name
    ~resource_group_name ~authentication ~customer_managed_key
    ~high_availability ~identity ~maintenance_window __id =
  let (r : _ Tf_core.resource) =
    make ?administrator_login ?administrator_password
      ?auto_grow_enabled ?backup_retention_days ?create_mode
      ?delegated_subnet_id ?geo_redundant_backup_enabled ?id
      ?point_in_time_restore_time_in_utc ?private_dns_zone_id
      ?replication_role ?sku_name ?source_server_id ?storage_mb
      ?storage_tier ?tags ?version ?zone ?timeouts ~location ~name
      ~resource_group_name ~authentication ~customer_managed_key
      ~high_availability ~identity ~maintenance_window __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
