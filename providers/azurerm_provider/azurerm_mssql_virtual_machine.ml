(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_virtual_machine__assessment__schedule = {
  day_of_week : string;  (** day_of_week *)
  monthly_occurrence : float option; [@option]
      (** monthly_occurrence *)
  start_time : string;  (** start_time *)
  weekly_interval : float option; [@option]  (** weekly_interval *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__assessment__schedule *)

type azurerm_mssql_virtual_machine__assessment = {
  enabled : bool option; [@option]  (** enabled *)
  run_immediately : bool option; [@option]  (** run_immediately *)
  schedule : azurerm_mssql_virtual_machine__assessment__schedule list;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__assessment *)

type azurerm_mssql_virtual_machine__auto_backup__manual_schedule = {
  days_of_week : string list option; [@option]  (** days_of_week *)
  full_backup_frequency : string;  (** full_backup_frequency *)
  full_backup_start_hour : float;  (** full_backup_start_hour *)
  full_backup_window_in_hours : float;
      (** full_backup_window_in_hours *)
  log_backup_frequency_in_minutes : float;
      (** log_backup_frequency_in_minutes *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__auto_backup__manual_schedule *)

type azurerm_mssql_virtual_machine__auto_backup = {
  encryption_enabled : bool option; [@option]
      (** encryption_enabled *)
  encryption_password : string option; [@option]
      (** encryption_password *)
  retention_period_in_days : float;  (** retention_period_in_days *)
  storage_account_access_key : string;
      (** storage_account_access_key *)
  storage_blob_endpoint : string;  (** storage_blob_endpoint *)
  system_databases_backup_enabled : bool option; [@option]
      (** system_databases_backup_enabled *)
  manual_schedule :
    azurerm_mssql_virtual_machine__auto_backup__manual_schedule list;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__auto_backup *)

type azurerm_mssql_virtual_machine__auto_patching = {
  day_of_week : string;  (** day_of_week *)
  maintenance_window_duration_in_minutes : float;
      (** maintenance_window_duration_in_minutes *)
  maintenance_window_starting_hour : float;
      (** maintenance_window_starting_hour *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__auto_patching *)

type azurerm_mssql_virtual_machine__key_vault_credential = {
  key_vault_url : string;  (** key_vault_url *)
  name : string;  (** name *)
  service_principal_name : string;  (** service_principal_name *)
  service_principal_secret : string;  (** service_principal_secret *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__key_vault_credential *)

type azurerm_mssql_virtual_machine__sql_instance = {
  adhoc_workloads_optimization_enabled : bool option; [@option]
      (** adhoc_workloads_optimization_enabled *)
  collation : string option; [@option]  (** collation *)
  instant_file_initialization_enabled : bool option; [@option]
      (** instant_file_initialization_enabled *)
  lock_pages_in_memory_enabled : bool option; [@option]
      (** lock_pages_in_memory_enabled *)
  max_dop : float option; [@option]  (** max_dop *)
  max_server_memory_mb : float option; [@option]
      (** max_server_memory_mb *)
  min_server_memory_mb : float option; [@option]
      (** min_server_memory_mb *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__sql_instance *)

type azurerm_mssql_virtual_machine__storage_configuration__data_settings = {
  default_file_path : string;  (** default_file_path *)
  luns : float list;  (** luns *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__storage_configuration__data_settings *)

type azurerm_mssql_virtual_machine__storage_configuration__log_settings = {
  default_file_path : string;  (** default_file_path *)
  luns : float list;  (** luns *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__storage_configuration__log_settings *)

type azurerm_mssql_virtual_machine__storage_configuration__temp_db_settings = {
  data_file_count : float option; [@option]  (** data_file_count *)
  data_file_growth_in_mb : float option; [@option]
      (** data_file_growth_in_mb *)
  data_file_size_mb : float option; [@option]
      (** data_file_size_mb *)
  default_file_path : string;  (** default_file_path *)
  log_file_growth_mb : float option; [@option]
      (** log_file_growth_mb *)
  log_file_size_mb : float option; [@option]  (** log_file_size_mb *)
  luns : float list;  (** luns *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__storage_configuration__temp_db_settings *)

type azurerm_mssql_virtual_machine__storage_configuration = {
  disk_type : string;  (** disk_type *)
  storage_workload_type : string;  (** storage_workload_type *)
  system_db_on_data_disk_enabled : bool option; [@option]
      (** system_db_on_data_disk_enabled *)
  data_settings :
    azurerm_mssql_virtual_machine__storage_configuration__data_settings
    list;
  log_settings :
    azurerm_mssql_virtual_machine__storage_configuration__log_settings
    list;
  temp_db_settings :
    azurerm_mssql_virtual_machine__storage_configuration__temp_db_settings
    list;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__storage_configuration *)

type azurerm_mssql_virtual_machine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__timeouts *)

type azurerm_mssql_virtual_machine__wsfc_domain_credential = {
  cluster_bootstrap_account_password : string;
      (** cluster_bootstrap_account_password *)
  cluster_operator_account_password : string;
      (** cluster_operator_account_password *)
  sql_service_account_password : string;
      (** sql_service_account_password *)
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine__wsfc_domain_credential *)

type azurerm_mssql_virtual_machine = {
  r_services_enabled : bool option; [@option]
      (** r_services_enabled *)
  sql_connectivity_port : float option; [@option]
      (** sql_connectivity_port *)
  sql_connectivity_type : string option; [@option]
      (** sql_connectivity_type *)
  sql_connectivity_update_password : string option; [@option]
      (** sql_connectivity_update_password *)
  sql_connectivity_update_username : string option; [@option]
      (** sql_connectivity_update_username *)
  sql_license_type : string option; [@option]
      (** sql_license_type *)
  sql_virtual_machine_group_id : string option; [@option]
      (** sql_virtual_machine_group_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  virtual_machine_id : string;  (** virtual_machine_id *)
  assessment : azurerm_mssql_virtual_machine__assessment list;
  auto_backup : azurerm_mssql_virtual_machine__auto_backup list;
  auto_patching : azurerm_mssql_virtual_machine__auto_patching list;
  key_vault_credential :
    azurerm_mssql_virtual_machine__key_vault_credential list;
  sql_instance : azurerm_mssql_virtual_machine__sql_instance list;
  storage_configuration :
    azurerm_mssql_virtual_machine__storage_configuration list;
  timeouts : azurerm_mssql_virtual_machine__timeouts option;
  wsfc_domain_credential :
    azurerm_mssql_virtual_machine__wsfc_domain_credential list;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_machine *)

let azurerm_mssql_virtual_machine ?r_services_enabled
    ?sql_connectivity_port ?sql_connectivity_type
    ?sql_connectivity_update_password
    ?sql_connectivity_update_username ?sql_license_type
    ?sql_virtual_machine_group_id ?tags ?timeouts ~virtual_machine_id
    ~assessment ~auto_backup ~auto_patching ~key_vault_credential
    ~sql_instance ~storage_configuration ~wsfc_domain_credential
    __resource_id =
  let __resource_type = "azurerm_mssql_virtual_machine" in
  let __resource =
    {
      r_services_enabled;
      sql_connectivity_port;
      sql_connectivity_type;
      sql_connectivity_update_password;
      sql_connectivity_update_username;
      sql_license_type;
      sql_virtual_machine_group_id;
      tags;
      virtual_machine_id;
      assessment;
      auto_backup;
      auto_patching;
      key_vault_credential;
      sql_instance;
      storage_configuration;
      timeouts;
      wsfc_domain_credential;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_virtual_machine __resource);
  ()
