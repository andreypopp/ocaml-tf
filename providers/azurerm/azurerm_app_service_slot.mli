(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type auth_settings__active_directory

val auth_settings__active_directory :
  ?allowed_audiences:string prop list ->
  ?client_secret:string prop ->
  client_id:string prop ->
  unit ->
  auth_settings__active_directory

type auth_settings__facebook

val auth_settings__facebook :
  ?oauth_scopes:string prop list ->
  app_id:string prop ->
  app_secret:string prop ->
  unit ->
  auth_settings__facebook

type auth_settings__google

val auth_settings__google :
  ?oauth_scopes:string prop list ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  auth_settings__google

type auth_settings__microsoft

val auth_settings__microsoft :
  ?oauth_scopes:string prop list ->
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  auth_settings__microsoft

type auth_settings__twitter

val auth_settings__twitter :
  consumer_key:string prop ->
  consumer_secret:string prop ->
  unit ->
  auth_settings__twitter

type auth_settings

val auth_settings :
  ?additional_login_params:string prop Tf_core.assoc ->
  ?allowed_external_redirect_urls:string prop list ->
  ?default_provider:string prop ->
  ?issuer:string prop ->
  ?runtime_version:string prop ->
  ?token_refresh_extension_hours:float prop ->
  ?token_store_enabled:bool prop ->
  ?unauthenticated_client_action:string prop ->
  ?active_directory:auth_settings__active_directory list ->
  ?facebook:auth_settings__facebook list ->
  ?google:auth_settings__google list ->
  ?microsoft:auth_settings__microsoft list ->
  ?twitter:auth_settings__twitter list ->
  enabled:bool prop ->
  unit ->
  auth_settings

type connection_string

val connection_string :
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  connection_string

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type logs__application_logs__azure_blob_storage

val logs__application_logs__azure_blob_storage :
  level:string prop ->
  retention_in_days:float prop ->
  sas_url:string prop ->
  unit ->
  logs__application_logs__azure_blob_storage

type logs__application_logs

val logs__application_logs :
  ?file_system_level:string prop ->
  ?azure_blob_storage:logs__application_logs__azure_blob_storage list ->
  unit ->
  logs__application_logs

type logs__http_logs__azure_blob_storage

val logs__http_logs__azure_blob_storage :
  retention_in_days:float prop ->
  sas_url:string prop ->
  unit ->
  logs__http_logs__azure_blob_storage

type logs__http_logs__file_system

val logs__http_logs__file_system :
  retention_in_days:float prop ->
  retention_in_mb:float prop ->
  unit ->
  logs__http_logs__file_system

type logs__http_logs

val logs__http_logs :
  ?azure_blob_storage:logs__http_logs__azure_blob_storage list ->
  ?file_system:logs__http_logs__file_system list ->
  unit ->
  logs__http_logs

type logs

val logs :
  ?detailed_error_messages_enabled:bool prop ->
  ?failed_request_tracing_enabled:bool prop ->
  ?application_logs:logs__application_logs list ->
  ?http_logs:logs__http_logs list ->
  unit ->
  logs

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_host *)
}

type site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_host *)
}

type site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__scm_ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__cors

val site_config__cors :
  ?support_credentials:bool prop ->
  allowed_origins:string prop list ->
  unit ->
  site_config__cors

type site_config

val site_config :
  ?acr_use_managed_identity_credentials:bool prop ->
  ?acr_user_managed_identity_client_id:string prop ->
  ?always_on:bool prop ->
  ?app_command_line:string prop ->
  ?auto_swap_slot_name:string prop ->
  ?default_documents:string prop list ->
  ?dotnet_framework_version:string prop ->
  ?ftps_state:string prop ->
  ?health_check_path:string prop ->
  ?http2_enabled:bool prop ->
  ?ip_restriction:site_config__ip_restriction list ->
  ?java_container:string prop ->
  ?java_container_version:string prop ->
  ?java_version:string prop ->
  ?linux_fx_version:string prop ->
  ?local_mysql_enabled:bool prop ->
  ?managed_pipeline_mode:string prop ->
  ?min_tls_version:string prop ->
  ?number_of_workers:float prop ->
  ?php_version:string prop ->
  ?python_version:string prop ->
  ?remote_debugging_enabled:bool prop ->
  ?remote_debugging_version:string prop ->
  ?scm_ip_restriction:site_config__scm_ip_restriction list ->
  ?scm_type:string prop ->
  ?scm_use_main_ip_restriction:bool prop ->
  ?use_32_bit_worker_process:bool prop ->
  ?vnet_route_all_enabled:bool prop ->
  ?websockets_enabled:bool prop ->
  ?windows_fx_version:string prop ->
  ?cors:site_config__cors list ->
  unit ->
  site_config

type storage_account

val storage_account :
  ?mount_path:string prop ->
  access_key:string prop ->
  account_name:string prop ->
  name:string prop ->
  share_name:string prop ->
  type_:string prop ->
  unit ->
  storage_account

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_app_service_slot

val azurerm_app_service_slot :
  ?app_settings:string prop Tf_core.assoc ->
  ?client_affinity_enabled:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?auth_settings:auth_settings list ->
  ?identity:identity list ->
  ?logs:logs list ->
  ?site_config:site_config list ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  connection_string:connection_string list ->
  storage_account:storage_account list ->
  unit ->
  azurerm_app_service_slot

val yojson_of_azurerm_app_service_slot :
  azurerm_app_service_slot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_name : string prop;
  app_service_plan_id : string prop;
  app_settings : string Tf_core.assoc prop;
  client_affinity_enabled : bool prop;
  default_site_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_settings:string prop Tf_core.assoc ->
  ?client_affinity_enabled:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?auth_settings:auth_settings list ->
  ?identity:identity list ->
  ?logs:logs list ->
  ?site_config:site_config list ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  connection_string:connection_string list ->
  storage_account:storage_account list ->
  string ->
  t

val make :
  ?app_settings:string prop Tf_core.assoc ->
  ?client_affinity_enabled:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?auth_settings:auth_settings list ->
  ?identity:identity list ->
  ?logs:logs list ->
  ?site_config:site_config list ->
  ?timeouts:timeouts ->
  app_service_name:string prop ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  connection_string:connection_string list ->
  storage_account:storage_account list ->
  string ->
  t Tf_core.resource
