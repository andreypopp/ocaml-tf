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
  ?always_on:bool prop ->
  ?app_scale_limit:float prop ->
  ?auto_swap_slot_name:string prop ->
  ?dotnet_framework_version:string prop ->
  ?elastic_instance_minimum:float prop ->
  ?ftps_state:string prop ->
  ?health_check_path:string prop ->
  ?http2_enabled:bool prop ->
  ?ip_restriction:site_config__ip_restriction list ->
  ?java_version:string prop ->
  ?linux_fx_version:string prop ->
  ?min_tls_version:string prop ->
  ?pre_warmed_instance_count:float prop ->
  ?runtime_scale_monitoring_enabled:bool prop ->
  ?scm_ip_restriction:site_config__scm_ip_restriction list ->
  ?scm_type:string prop ->
  ?scm_use_main_ip_restriction:bool prop ->
  ?use_32_bit_worker_process:bool prop ->
  ?vnet_route_all_enabled:bool prop ->
  ?websockets_enabled:bool prop ->
  ?cors:site_config__cors list ->
  unit ->
  site_config

type source_control

val source_control :
  ?branch:string prop ->
  ?manual_integration:bool prop ->
  ?repo_url:string prop ->
  ?rollback_enabled:bool prop ->
  ?use_mercurial:bool prop ->
  unit ->
  source_control

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_function_app

val azurerm_function_app :
  ?app_settings:string prop Tf_core.assoc ->
  ?client_cert_mode:string prop ->
  ?daily_memory_time_quota:float prop ->
  ?enable_builtin_logging:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?os_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?auth_settings:auth_settings list ->
  ?identity:identity list ->
  ?site_config:site_config list ->
  ?source_control:source_control list ->
  ?timeouts:timeouts ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_access_key:string prop ->
  storage_account_name:string prop ->
  connection_string:connection_string list ->
  unit ->
  azurerm_function_app

val yojson_of_azurerm_function_app : azurerm_function_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_plan_id : string prop;
  app_settings : string Tf_core.assoc prop;
  client_cert_mode : string prop;
  custom_domain_verification_id : string prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enable_builtin_logging : bool prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  os_type : string prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_settings:string prop Tf_core.assoc ->
  ?client_cert_mode:string prop ->
  ?daily_memory_time_quota:float prop ->
  ?enable_builtin_logging:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?os_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?auth_settings:auth_settings list ->
  ?identity:identity list ->
  ?site_config:site_config list ->
  ?source_control:source_control list ->
  ?timeouts:timeouts ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_access_key:string prop ->
  storage_account_name:string prop ->
  connection_string:connection_string list ->
  string ->
  t

val make :
  ?app_settings:string prop Tf_core.assoc ->
  ?client_cert_mode:string prop ->
  ?daily_memory_time_quota:float prop ->
  ?enable_builtin_logging:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?os_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?auth_settings:auth_settings list ->
  ?identity:identity list ->
  ?site_config:site_config list ->
  ?source_control:source_control list ->
  ?timeouts:timeouts ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_access_key:string prop ->
  storage_account_name:string prop ->
  connection_string:connection_string list ->
  string ->
  t Tf_core.resource
