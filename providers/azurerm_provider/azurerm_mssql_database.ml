(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_database__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__identity *)

type azurerm_mssql_database__import = {
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
(** azurerm_mssql_database__import *)

type azurerm_mssql_database__long_term_retention_policy = {
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
(** azurerm_mssql_database__long_term_retention_policy *)

type azurerm_mssql_database__short_term_retention_policy = {
  backup_interval_in_hours : float prop option; [@option]
      (** backup_interval_in_hours *)
  retention_days : float prop;  (** retention_days *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__short_term_retention_policy *)

type azurerm_mssql_database__threat_detection_policy = {
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
(** azurerm_mssql_database__threat_detection_policy *)

type azurerm_mssql_database__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__timeouts *)

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
  identity : azurerm_mssql_database__identity list;
  import : azurerm_mssql_database__import list;
  long_term_retention_policy :
    azurerm_mssql_database__long_term_retention_policy list;
  short_term_retention_policy :
    azurerm_mssql_database__short_term_retention_policy list;
  threat_detection_policy :
    azurerm_mssql_database__threat_detection_policy list;
  timeouts : azurerm_mssql_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_database *)

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
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_mssql_database" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_database __resource);
  ()
