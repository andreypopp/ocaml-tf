(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type import = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  authentication_type : string prop;
  storage_account_id : string prop option; [@option]
  storage_key : string prop;
  storage_key_type : string prop;
  storage_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import) -> ()

let yojson_of_import =
  (function
   | {
       administrator_login = v_administrator_login;
       administrator_login_password = v_administrator_login_password;
       authentication_type = v_authentication_type;
       storage_account_id = v_storage_account_id;
       storage_key = v_storage_key;
       storage_key_type = v_storage_key_type;
       storage_uri = v_storage_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_uri in
         ("storage_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_key_type
         in
         ("storage_key_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_key in
         ("storage_key", arg) :: bnds
       in
       let bnds =
         match v_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
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
    : import -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import

[@@@deriving.end]

type long_term_retention_policy = {
  immutable_backups_enabled : bool prop option; [@option]
  monthly_retention : string prop option; [@option]
  week_of_year : float prop option; [@option]
  weekly_retention : string prop option; [@option]
  yearly_retention : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : long_term_retention_policy) -> ()

let yojson_of_long_term_retention_policy =
  (function
   | {
       immutable_backups_enabled = v_immutable_backups_enabled;
       monthly_retention = v_monthly_retention;
       week_of_year = v_week_of_year;
       weekly_retention = v_weekly_retention;
       yearly_retention = v_yearly_retention;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_yearly_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "yearly_retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_weekly_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weekly_retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_week_of_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "week_of_year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monthly_retention with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monthly_retention", arg in
             bnd :: bnds
       in
       let bnds =
         match v_immutable_backups_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "immutable_backups_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : long_term_retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_long_term_retention_policy

[@@@deriving.end]

type short_term_retention_policy = {
  backup_interval_in_hours : float prop option; [@option]
  retention_days : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : short_term_retention_policy) -> ()

let yojson_of_short_term_retention_policy =
  (function
   | {
       backup_interval_in_hours = v_backup_interval_in_hours;
       retention_days = v_retention_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_retention_days in
         ("retention_days", arg) :: bnds
       in
       let bnds =
         match v_backup_interval_in_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "backup_interval_in_hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : short_term_retention_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_short_term_retention_policy

[@@@deriving.end]

type threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
  email_account_admins : string prop option; [@option]
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
             let arg = yojson_of_prop yojson_of_string v in
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

type azurerm_mssql_database = {
  auto_pause_delay_in_minutes : float prop option; [@option]
  collation : string prop option; [@option]
  create_mode : string prop option; [@option]
  creation_source_database_id : string prop option; [@option]
  elastic_pool_id : string prop option; [@option]
  enclave_type : string prop option; [@option]
  geo_backup_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  ledger_enabled : bool prop option; [@option]
  license_type : string prop option; [@option]
  maintenance_configuration_name : string prop option; [@option]
  max_size_gb : float prop option; [@option]
  min_capacity : float prop option; [@option]
  name : string prop;
  read_replica_count : float prop option; [@option]
  read_scale : bool prop option; [@option]
  recover_database_id : string prop option; [@option]
  recovery_point_id : string prop option; [@option]
  restore_dropped_database_id : string prop option; [@option]
  restore_long_term_retention_backup_id : string prop option;
      [@option]
  restore_point_in_time : string prop option; [@option]
  sample_name : string prop option; [@option]
  server_id : string prop;
  sku_name : string prop option; [@option]
  storage_account_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  transparent_data_encryption_enabled : bool prop option; [@option]
  transparent_data_encryption_key_automatic_rotation_enabled :
    bool prop option;
      [@option]
  transparent_data_encryption_key_vault_key_id : string prop option;
      [@option]
  zone_redundant : bool prop option; [@option]
  identity : identity list;
  import : import list;
  long_term_retention_policy : long_term_retention_policy list;
  short_term_retention_policy : short_term_retention_policy list;
  threat_detection_policy : threat_detection_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_database) -> ()

let yojson_of_azurerm_mssql_database =
  (function
   | {
       auto_pause_delay_in_minutes = v_auto_pause_delay_in_minutes;
       collation = v_collation;
       create_mode = v_create_mode;
       creation_source_database_id = v_creation_source_database_id;
       elastic_pool_id = v_elastic_pool_id;
       enclave_type = v_enclave_type;
       geo_backup_enabled = v_geo_backup_enabled;
       id = v_id;
       ledger_enabled = v_ledger_enabled;
       license_type = v_license_type;
       maintenance_configuration_name =
         v_maintenance_configuration_name;
       max_size_gb = v_max_size_gb;
       min_capacity = v_min_capacity;
       name = v_name;
       read_replica_count = v_read_replica_count;
       read_scale = v_read_scale;
       recover_database_id = v_recover_database_id;
       recovery_point_id = v_recovery_point_id;
       restore_dropped_database_id = v_restore_dropped_database_id;
       restore_long_term_retention_backup_id =
         v_restore_long_term_retention_backup_id;
       restore_point_in_time = v_restore_point_in_time;
       sample_name = v_sample_name;
       server_id = v_server_id;
       sku_name = v_sku_name;
       storage_account_type = v_storage_account_type;
       tags = v_tags;
       transparent_data_encryption_enabled =
         v_transparent_data_encryption_enabled;
       transparent_data_encryption_key_automatic_rotation_enabled =
         v_transparent_data_encryption_key_automatic_rotation_enabled;
       transparent_data_encryption_key_vault_key_id =
         v_transparent_data_encryption_key_vault_key_id;
       zone_redundant = v_zone_redundant;
       identity = v_identity;
       import = v_import;
       long_term_retention_policy = v_long_term_retention_policy;
       short_term_retention_policy = v_short_term_retention_policy;
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
         let arg =
           yojson_of_list yojson_of_short_term_retention_policy
             v_short_term_retention_policy
         in
         ("short_term_retention_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_long_term_retention_policy
             v_long_term_retention_policy
         in
         ("long_term_retention_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_import v_import in
         ("import", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_zone_redundant with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundant", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transparent_data_encryption_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "transparent_data_encryption_key_vault_key_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_transparent_data_encryption_key_automatic_rotation_enabled
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "transparent_data_encryption_key_automatic_rotation_enabled",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_transparent_data_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "transparent_data_encryption_enabled", arg in
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
         match v_storage_account_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_type", arg in
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
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         match v_sample_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sample_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restore_point_in_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_point_in_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restore_long_term_retention_backup_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "restore_long_term_retention_backup_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_restore_dropped_database_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_dropped_database_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recovery_point_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recovery_point_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recover_database_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recover_database_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_scale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_scale", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_replica_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_replica_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_configuration_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_configuration_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ledger_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ledger_enabled", arg in
             bnd :: bnds
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
         match v_geo_backup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "geo_backup_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enclave_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enclave_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elastic_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elastic_pool_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_creation_source_database_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "creation_source_database_id", arg in
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
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_pause_delay_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "auto_pause_delay_in_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_database

[@@@deriving.end]

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let import ?storage_account_id ~administrator_login
    ~administrator_login_password ~authentication_type ~storage_key
    ~storage_key_type ~storage_uri () : import =
  {
    administrator_login;
    administrator_login_password;
    authentication_type;
    storage_account_id;
    storage_key;
    storage_key_type;
    storage_uri;
  }

let long_term_retention_policy ?immutable_backups_enabled
    ?monthly_retention ?week_of_year ?weekly_retention
    ?yearly_retention () : long_term_retention_policy =
  {
    immutable_backups_enabled;
    monthly_retention;
    week_of_year;
    weekly_retention;
    yearly_retention;
  }

let short_term_retention_policy ?backup_interval_in_hours
    ~retention_days () : short_term_retention_policy =
  { backup_interval_in_hours; retention_days }

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

let azurerm_mssql_database ?auto_pause_delay_in_minutes ?collation
    ?create_mode ?creation_source_database_id ?elastic_pool_id
    ?enclave_type ?geo_backup_enabled ?id ?ledger_enabled
    ?license_type ?maintenance_configuration_name ?max_size_gb
    ?min_capacity ?read_replica_count ?read_scale
    ?recover_database_id ?recovery_point_id
    ?restore_dropped_database_id
    ?restore_long_term_retention_backup_id ?restore_point_in_time
    ?sample_name ?sku_name ?storage_account_type ?tags
    ?transparent_data_encryption_enabled
    ?transparent_data_encryption_key_automatic_rotation_enabled
    ?transparent_data_encryption_key_vault_key_id ?zone_redundant
    ?timeouts ~name ~server_id ~identity ~import
    ~long_term_retention_policy ~short_term_retention_policy
    ~threat_detection_policy () : azurerm_mssql_database =
  {
    auto_pause_delay_in_minutes;
    collation;
    create_mode;
    creation_source_database_id;
    elastic_pool_id;
    enclave_type;
    geo_backup_enabled;
    id;
    ledger_enabled;
    license_type;
    maintenance_configuration_name;
    max_size_gb;
    min_capacity;
    name;
    read_replica_count;
    read_scale;
    recover_database_id;
    recovery_point_id;
    restore_dropped_database_id;
    restore_long_term_retention_backup_id;
    restore_point_in_time;
    sample_name;
    server_id;
    sku_name;
    storage_account_type;
    tags;
    transparent_data_encryption_enabled;
    transparent_data_encryption_key_automatic_rotation_enabled;
    transparent_data_encryption_key_vault_key_id;
    zone_redundant;
    identity;
    import;
    long_term_retention_policy;
    short_term_retention_policy;
    threat_detection_policy;
    timeouts;
  }

type t = {
  auto_pause_delay_in_minutes : float prop;
  collation : string prop;
  create_mode : string prop;
  creation_source_database_id : string prop;
  elastic_pool_id : string prop;
  enclave_type : string prop;
  geo_backup_enabled : bool prop;
  id : string prop;
  ledger_enabled : bool prop;
  license_type : string prop;
  maintenance_configuration_name : string prop;
  max_size_gb : float prop;
  min_capacity : float prop;
  name : string prop;
  read_replica_count : float prop;
  read_scale : bool prop;
  recover_database_id : string prop;
  recovery_point_id : string prop;
  restore_dropped_database_id : string prop;
  restore_long_term_retention_backup_id : string prop;
  restore_point_in_time : string prop;
  sample_name : string prop;
  server_id : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  tags : (string * string) list prop;
  transparent_data_encryption_enabled : bool prop;
  transparent_data_encryption_key_automatic_rotation_enabled :
    bool prop;
  transparent_data_encryption_key_vault_key_id : string prop;
  zone_redundant : bool prop;
}

let make ?auto_pause_delay_in_minutes ?collation ?create_mode
    ?creation_source_database_id ?elastic_pool_id ?enclave_type
    ?geo_backup_enabled ?id ?ledger_enabled ?license_type
    ?maintenance_configuration_name ?max_size_gb ?min_capacity
    ?read_replica_count ?read_scale ?recover_database_id
    ?recovery_point_id ?restore_dropped_database_id
    ?restore_long_term_retention_backup_id ?restore_point_in_time
    ?sample_name ?sku_name ?storage_account_type ?tags
    ?transparent_data_encryption_enabled
    ?transparent_data_encryption_key_automatic_rotation_enabled
    ?transparent_data_encryption_key_vault_key_id ?zone_redundant
    ?timeouts ~name ~server_id ~identity ~import
    ~long_term_retention_policy ~short_term_retention_policy
    ~threat_detection_policy __id =
  let __type = "azurerm_mssql_database" in
  let __attrs =
    ({
       auto_pause_delay_in_minutes =
         Prop.computed __type __id "auto_pause_delay_in_minutes";
       collation = Prop.computed __type __id "collation";
       create_mode = Prop.computed __type __id "create_mode";
       creation_source_database_id =
         Prop.computed __type __id "creation_source_database_id";
       elastic_pool_id = Prop.computed __type __id "elastic_pool_id";
       enclave_type = Prop.computed __type __id "enclave_type";
       geo_backup_enabled =
         Prop.computed __type __id "geo_backup_enabled";
       id = Prop.computed __type __id "id";
       ledger_enabled = Prop.computed __type __id "ledger_enabled";
       license_type = Prop.computed __type __id "license_type";
       maintenance_configuration_name =
         Prop.computed __type __id "maintenance_configuration_name";
       max_size_gb = Prop.computed __type __id "max_size_gb";
       min_capacity = Prop.computed __type __id "min_capacity";
       name = Prop.computed __type __id "name";
       read_replica_count =
         Prop.computed __type __id "read_replica_count";
       read_scale = Prop.computed __type __id "read_scale";
       recover_database_id =
         Prop.computed __type __id "recover_database_id";
       recovery_point_id =
         Prop.computed __type __id "recovery_point_id";
       restore_dropped_database_id =
         Prop.computed __type __id "restore_dropped_database_id";
       restore_long_term_retention_backup_id =
         Prop.computed __type __id
           "restore_long_term_retention_backup_id";
       restore_point_in_time =
         Prop.computed __type __id "restore_point_in_time";
       sample_name = Prop.computed __type __id "sample_name";
       server_id = Prop.computed __type __id "server_id";
       sku_name = Prop.computed __type __id "sku_name";
       storage_account_type =
         Prop.computed __type __id "storage_account_type";
       tags = Prop.computed __type __id "tags";
       transparent_data_encryption_enabled =
         Prop.computed __type __id
           "transparent_data_encryption_enabled";
       transparent_data_encryption_key_automatic_rotation_enabled =
         Prop.computed __type __id
           "transparent_data_encryption_key_automatic_rotation_enabled";
       transparent_data_encryption_key_vault_key_id =
         Prop.computed __type __id
           "transparent_data_encryption_key_vault_key_id";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_database
        (azurerm_mssql_database ?auto_pause_delay_in_minutes
           ?collation ?create_mode ?creation_source_database_id
           ?elastic_pool_id ?enclave_type ?geo_backup_enabled ?id
           ?ledger_enabled ?license_type
           ?maintenance_configuration_name ?max_size_gb ?min_capacity
           ?read_replica_count ?read_scale ?recover_database_id
           ?recovery_point_id ?restore_dropped_database_id
           ?restore_long_term_retention_backup_id
           ?restore_point_in_time ?sample_name ?sku_name
           ?storage_account_type ?tags
           ?transparent_data_encryption_enabled
           ?transparent_data_encryption_key_automatic_rotation_enabled
           ?transparent_data_encryption_key_vault_key_id
           ?zone_redundant ?timeouts ~name ~server_id ~identity
           ~import ~long_term_retention_policy
           ~short_term_retention_policy ~threat_detection_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_pause_delay_in_minutes ?collation
    ?create_mode ?creation_source_database_id ?elastic_pool_id
    ?enclave_type ?geo_backup_enabled ?id ?ledger_enabled
    ?license_type ?maintenance_configuration_name ?max_size_gb
    ?min_capacity ?read_replica_count ?read_scale
    ?recover_database_id ?recovery_point_id
    ?restore_dropped_database_id
    ?restore_long_term_retention_backup_id ?restore_point_in_time
    ?sample_name ?sku_name ?storage_account_type ?tags
    ?transparent_data_encryption_enabled
    ?transparent_data_encryption_key_automatic_rotation_enabled
    ?transparent_data_encryption_key_vault_key_id ?zone_redundant
    ?timeouts ~name ~server_id ~identity ~import
    ~long_term_retention_policy ~short_term_retention_policy
    ~threat_detection_policy __id =
  let (r : _ Tf_core.resource) =
    make ?auto_pause_delay_in_minutes ?collation ?create_mode
      ?creation_source_database_id ?elastic_pool_id ?enclave_type
      ?geo_backup_enabled ?id ?ledger_enabled ?license_type
      ?maintenance_configuration_name ?max_size_gb ?min_capacity
      ?read_replica_count ?read_scale ?recover_database_id
      ?recovery_point_id ?restore_dropped_database_id
      ?restore_long_term_retention_backup_id ?restore_point_in_time
      ?sample_name ?sku_name ?storage_account_type ?tags
      ?transparent_data_encryption_enabled
      ?transparent_data_encryption_key_automatic_rotation_enabled
      ?transparent_data_encryption_key_vault_key_id ?zone_redundant
      ?timeouts ~name ~server_id ~identity ~import
      ~long_term_retention_policy ~short_term_retention_policy
      ~threat_detection_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
