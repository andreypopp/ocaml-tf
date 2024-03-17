(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_database__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__identity *)

type azurerm_mssql_database__import = {
  administrator_login : string;  (** administrator_login *)
  administrator_login_password : string;
      (** administrator_login_password *)
  authentication_type : string;  (** authentication_type *)
  storage_account_id : string option; [@option]
      (** storage_account_id *)
  storage_key : string;  (** storage_key *)
  storage_key_type : string;  (** storage_key_type *)
  storage_uri : string;  (** storage_uri *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__import *)

type azurerm_mssql_database__long_term_retention_policy = {
  immutable_backups_enabled : bool option; [@option]
      (** immutable_backups_enabled *)
  monthly_retention : string option; [@option]
      (** monthly_retention *)
  week_of_year : float option; [@option]  (** week_of_year *)
  weekly_retention : string option; [@option]
      (** weekly_retention *)
  yearly_retention : string option; [@option]  (** yearly_retention *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__long_term_retention_policy *)

type azurerm_mssql_database__short_term_retention_policy = {
  backup_interval_in_hours : float option; [@option]
      (** backup_interval_in_hours *)
  retention_days : float;  (** retention_days *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__short_term_retention_policy *)

type azurerm_mssql_database__threat_detection_policy = {
  disabled_alerts : string list option; [@option]
      (** disabled_alerts *)
  email_account_admins : string option; [@option]
      (** email_account_admins *)
  email_addresses : string list option; [@option]
      (** email_addresses *)
  retention_days : float option; [@option]  (** retention_days *)
  state : string option; [@option]  (** state *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string option; [@option]  (** storage_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__threat_detection_policy *)

type azurerm_mssql_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_database__timeouts *)

type azurerm_mssql_database = {
  create_mode : string option; [@option]  (** create_mode *)
  elastic_pool_id : string option; [@option]  (** elastic_pool_id *)
  enclave_type : string option; [@option]  (** enclave_type *)
  geo_backup_enabled : bool option; [@option]
      (** geo_backup_enabled *)
  name : string;  (** name *)
  recover_database_id : string option; [@option]
      (** recover_database_id *)
  recovery_point_id : string option; [@option]
      (** recovery_point_id *)
  restore_dropped_database_id : string option; [@option]
      (** restore_dropped_database_id *)
  restore_long_term_retention_backup_id : string option; [@option]
      (** restore_long_term_retention_backup_id *)
  server_id : string;  (** server_id *)
  storage_account_type : string option; [@option]
      (** storage_account_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  transparent_data_encryption_enabled : bool option; [@option]
      (** transparent_data_encryption_enabled *)
  transparent_data_encryption_key_automatic_rotation_enabled :
    bool option;
      [@option]
      (** transparent_data_encryption_key_automatic_rotation_enabled *)
  transparent_data_encryption_key_vault_key_id : string option;
      [@option]
      (** transparent_data_encryption_key_vault_key_id *)
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

let azurerm_mssql_database ?create_mode ?elastic_pool_id
    ?enclave_type ?geo_backup_enabled ?recover_database_id
    ?recovery_point_id ?restore_dropped_database_id
    ?restore_long_term_retention_backup_id ?storage_account_type
    ?tags ?transparent_data_encryption_enabled
    ?transparent_data_encryption_key_automatic_rotation_enabled
    ?transparent_data_encryption_key_vault_key_id ?timeouts ~name
    ~server_id ~identity ~import ~long_term_retention_policy
    ~short_term_retention_policy ~threat_detection_policy
    __resource_id =
  let __resource_type = "azurerm_mssql_database" in
  let __resource =
    {
      create_mode;
      elastic_pool_id;
      enclave_type;
      geo_backup_enabled;
      name;
      recover_database_id;
      recovery_point_id;
      restore_dropped_database_id;
      restore_long_term_retention_backup_id;
      server_id;
      storage_account_type;
      tags;
      transparent_data_encryption_enabled;
      transparent_data_encryption_key_automatic_rotation_enabled;
      transparent_data_encryption_key_vault_key_id;
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
