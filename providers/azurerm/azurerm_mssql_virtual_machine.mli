(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type assessment__schedule

val assessment__schedule :
  ?monthly_occurrence:float prop ->
  ?weekly_interval:float prop ->
  day_of_week:string prop ->
  start_time:string prop ->
  unit ->
  assessment__schedule

type assessment

val assessment :
  ?enabled:bool prop ->
  ?run_immediately:bool prop ->
  ?schedule:assessment__schedule list ->
  unit ->
  assessment

type auto_backup__manual_schedule

val auto_backup__manual_schedule :
  ?days_of_week:string prop list ->
  full_backup_frequency:string prop ->
  full_backup_start_hour:float prop ->
  full_backup_window_in_hours:float prop ->
  log_backup_frequency_in_minutes:float prop ->
  unit ->
  auto_backup__manual_schedule

type auto_backup

val auto_backup :
  ?encryption_enabled:bool prop ->
  ?encryption_password:string prop ->
  ?system_databases_backup_enabled:bool prop ->
  ?manual_schedule:auto_backup__manual_schedule list ->
  retention_period_in_days:float prop ->
  storage_account_access_key:string prop ->
  storage_blob_endpoint:string prop ->
  unit ->
  auto_backup

type auto_patching

val auto_patching :
  day_of_week:string prop ->
  maintenance_window_duration_in_minutes:float prop ->
  maintenance_window_starting_hour:float prop ->
  unit ->
  auto_patching

type key_vault_credential

val key_vault_credential :
  key_vault_url:string prop ->
  name:string prop ->
  service_principal_name:string prop ->
  service_principal_secret:string prop ->
  unit ->
  key_vault_credential

type sql_instance

val sql_instance :
  ?adhoc_workloads_optimization_enabled:bool prop ->
  ?collation:string prop ->
  ?instant_file_initialization_enabled:bool prop ->
  ?lock_pages_in_memory_enabled:bool prop ->
  ?max_dop:float prop ->
  ?max_server_memory_mb:float prop ->
  ?min_server_memory_mb:float prop ->
  unit ->
  sql_instance

type storage_configuration__data_settings

val storage_configuration__data_settings :
  default_file_path:string prop ->
  luns:float prop list ->
  unit ->
  storage_configuration__data_settings

type storage_configuration__log_settings

val storage_configuration__log_settings :
  default_file_path:string prop ->
  luns:float prop list ->
  unit ->
  storage_configuration__log_settings

type storage_configuration__temp_db_settings

val storage_configuration__temp_db_settings :
  ?data_file_count:float prop ->
  ?data_file_growth_in_mb:float prop ->
  ?data_file_size_mb:float prop ->
  ?log_file_growth_mb:float prop ->
  ?log_file_size_mb:float prop ->
  default_file_path:string prop ->
  luns:float prop list ->
  unit ->
  storage_configuration__temp_db_settings

type storage_configuration

val storage_configuration :
  ?system_db_on_data_disk_enabled:bool prop ->
  ?data_settings:storage_configuration__data_settings list ->
  ?log_settings:storage_configuration__log_settings list ->
  ?temp_db_settings:storage_configuration__temp_db_settings list ->
  disk_type:string prop ->
  storage_workload_type:string prop ->
  unit ->
  storage_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type wsfc_domain_credential

val wsfc_domain_credential :
  cluster_bootstrap_account_password:string prop ->
  cluster_operator_account_password:string prop ->
  sql_service_account_password:string prop ->
  unit ->
  wsfc_domain_credential

type azurerm_mssql_virtual_machine

val azurerm_mssql_virtual_machine :
  ?id:string prop ->
  ?r_services_enabled:bool prop ->
  ?sql_connectivity_port:float prop ->
  ?sql_connectivity_type:string prop ->
  ?sql_connectivity_update_password:string prop ->
  ?sql_connectivity_update_username:string prop ->
  ?sql_license_type:string prop ->
  ?sql_virtual_machine_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?assessment:assessment list ->
  ?auto_backup:auto_backup list ->
  ?auto_patching:auto_patching list ->
  ?key_vault_credential:key_vault_credential list ->
  ?sql_instance:sql_instance list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  ?wsfc_domain_credential:wsfc_domain_credential list ->
  virtual_machine_id:string prop ->
  unit ->
  azurerm_mssql_virtual_machine

val yojson_of_azurerm_mssql_virtual_machine :
  azurerm_mssql_virtual_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  r_services_enabled : bool prop;
  sql_connectivity_port : float prop;
  sql_connectivity_type : string prop;
  sql_connectivity_update_password : string prop;
  sql_connectivity_update_username : string prop;
  sql_license_type : string prop;
  sql_virtual_machine_group_id : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?r_services_enabled:bool prop ->
  ?sql_connectivity_port:float prop ->
  ?sql_connectivity_type:string prop ->
  ?sql_connectivity_update_password:string prop ->
  ?sql_connectivity_update_username:string prop ->
  ?sql_license_type:string prop ->
  ?sql_virtual_machine_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?assessment:assessment list ->
  ?auto_backup:auto_backup list ->
  ?auto_patching:auto_patching list ->
  ?key_vault_credential:key_vault_credential list ->
  ?sql_instance:sql_instance list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  ?wsfc_domain_credential:wsfc_domain_credential list ->
  virtual_machine_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?r_services_enabled:bool prop ->
  ?sql_connectivity_port:float prop ->
  ?sql_connectivity_type:string prop ->
  ?sql_connectivity_update_password:string prop ->
  ?sql_connectivity_update_username:string prop ->
  ?sql_license_type:string prop ->
  ?sql_virtual_machine_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?assessment:assessment list ->
  ?auto_backup:auto_backup list ->
  ?auto_patching:auto_patching list ->
  ?key_vault_credential:key_vault_credential list ->
  ?sql_instance:sql_instance list ->
  ?storage_configuration:storage_configuration list ->
  ?timeouts:timeouts ->
  ?wsfc_domain_credential:wsfc_domain_credential list ->
  virtual_machine_id:string prop ->
  string ->
  t Tf_core.resource
