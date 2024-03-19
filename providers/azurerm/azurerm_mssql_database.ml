(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type import = {
  administrator_login : string prop;  (** administrator_login *)
  administrator_login_password : string prop;
      (** administrator_login_password *)
  authentication_type : string prop;  (** authentication_type *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  storage_key : string prop;  (** storage_key *)
  storage_key_type : string prop;  (** storage_key_type *)
  storage_uri : string prop;  (** storage_uri *)
}
[@@deriving yojson_of]
(** import *)

type long_term_retention_policy = {
  immutable_backups_enabled : bool prop option; [@option]
      (** immutable_backups_enabled *)
  monthly_retention : string prop option; [@option]
      (** monthly_retention *)
  week_of_year : float prop option; [@option]  (** week_of_year *)
  weekly_retention : string prop option; [@option]
      (** weekly_retention *)
  yearly_retention : string prop option; [@option]
      (** yearly_retention *)
}
[@@deriving yojson_of]
(** long_term_retention_policy *)

type short_term_retention_policy = {
  backup_interval_in_hours : float prop option; [@option]
      (** backup_interval_in_hours *)
  retention_days : float prop;  (** retention_days *)
}
[@@deriving yojson_of]
(** short_term_retention_policy *)

type threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins : string prop option; [@option]
      (** email_account_admins *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  state : string prop option; [@option]  (** state *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
}
[@@deriving yojson_of]
(** threat_detection_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_database = {
  auto_pause_delay_in_minutes : float prop option; [@option]
      (** auto_pause_delay_in_minutes *)
  collation : string prop option; [@option]  (** collation *)
  create_mode : string prop option; [@option]  (** create_mode *)
  creation_source_database_id : string prop option; [@option]
      (** creation_source_database_id *)
  elastic_pool_id : string prop option; [@option]
      (** elastic_pool_id *)
  enclave_type : string prop option; [@option]  (** enclave_type *)
  geo_backup_enabled : bool prop option; [@option]
      (** geo_backup_enabled *)
  id : string prop option; [@option]  (** id *)
  ledger_enabled : bool prop option; [@option]  (** ledger_enabled *)
  license_type : string prop option; [@option]  (** license_type *)
  maintenance_configuration_name : string prop option; [@option]
      (** maintenance_configuration_name *)
  max_size_gb : float prop option; [@option]  (** max_size_gb *)
  min_capacity : float prop option; [@option]  (** min_capacity *)
  name : string prop;  (** name *)
  read_replica_count : float prop option; [@option]
      (** read_replica_count *)
  read_scale : bool prop option; [@option]  (** read_scale *)
  recover_database_id : string prop option; [@option]
      (** recover_database_id *)
  recovery_point_id : string prop option; [@option]
      (** recovery_point_id *)
  restore_dropped_database_id : string prop option; [@option]
      (** restore_dropped_database_id *)
  restore_long_term_retention_backup_id : string prop option;
      [@option]
      (** restore_long_term_retention_backup_id *)
  restore_point_in_time : string prop option; [@option]
      (** restore_point_in_time *)
  sample_name : string prop option; [@option]  (** sample_name *)
  server_id : string prop;  (** server_id *)
  sku_name : string prop option; [@option]  (** sku_name *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  transparent_data_encryption_enabled : bool prop option; [@option]
      (** transparent_data_encryption_enabled *)
  transparent_data_encryption_key_automatic_rotation_enabled :
    bool prop option;
      [@option]
      (** transparent_data_encryption_key_automatic_rotation_enabled *)
  transparent_data_encryption_key_vault_key_id : string prop option;
      [@option]
      (** transparent_data_encryption_key_vault_key_id *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  identity : identity list;
  import : import list;
  long_term_retention_policy : long_term_retention_policy list;
  short_term_retention_policy : short_term_retention_policy list;
  threat_detection_policy : threat_detection_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_database *)

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
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_mssql_database" in
  let __resource =
    azurerm_mssql_database ?auto_pause_delay_in_minutes ?collation
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
      ~threat_detection_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_database __resource);
  let __resource_attributes =
    ({
       auto_pause_delay_in_minutes =
         Prop.computed __resource_type __resource_id
           "auto_pause_delay_in_minutes";
       collation =
         Prop.computed __resource_type __resource_id "collation";
       create_mode =
         Prop.computed __resource_type __resource_id "create_mode";
       creation_source_database_id =
         Prop.computed __resource_type __resource_id
           "creation_source_database_id";
       elastic_pool_id =
         Prop.computed __resource_type __resource_id
           "elastic_pool_id";
       enclave_type =
         Prop.computed __resource_type __resource_id "enclave_type";
       geo_backup_enabled =
         Prop.computed __resource_type __resource_id
           "geo_backup_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       ledger_enabled =
         Prop.computed __resource_type __resource_id "ledger_enabled";
       license_type =
         Prop.computed __resource_type __resource_id "license_type";
       maintenance_configuration_name =
         Prop.computed __resource_type __resource_id
           "maintenance_configuration_name";
       max_size_gb =
         Prop.computed __resource_type __resource_id "max_size_gb";
       min_capacity =
         Prop.computed __resource_type __resource_id "min_capacity";
       name = Prop.computed __resource_type __resource_id "name";
       read_replica_count =
         Prop.computed __resource_type __resource_id
           "read_replica_count";
       read_scale =
         Prop.computed __resource_type __resource_id "read_scale";
       recover_database_id =
         Prop.computed __resource_type __resource_id
           "recover_database_id";
       recovery_point_id =
         Prop.computed __resource_type __resource_id
           "recovery_point_id";
       restore_dropped_database_id =
         Prop.computed __resource_type __resource_id
           "restore_dropped_database_id";
       restore_long_term_retention_backup_id =
         Prop.computed __resource_type __resource_id
           "restore_long_term_retention_backup_id";
       restore_point_in_time =
         Prop.computed __resource_type __resource_id
           "restore_point_in_time";
       sample_name =
         Prop.computed __resource_type __resource_id "sample_name";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       storage_account_type =
         Prop.computed __resource_type __resource_id
           "storage_account_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       transparent_data_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "transparent_data_encryption_enabled";
       transparent_data_encryption_key_automatic_rotation_enabled =
         Prop.computed __resource_type __resource_id
           "transparent_data_encryption_key_automatic_rotation_enabled";
       transparent_data_encryption_key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "transparent_data_encryption_key_vault_key_id";
       zone_redundant =
         Prop.computed __resource_type __resource_id "zone_redundant";
     }
      : t)
  in
  __resource_attributes
