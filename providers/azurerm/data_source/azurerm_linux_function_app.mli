(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auth_settings__twitter = {
  consumer_key : string prop;  (** consumer_key *)
  consumer_secret : string prop;  (** consumer_secret *)
  consumer_secret_setting_name : string prop;
      (** consumer_secret_setting_name *)
}

type auth_settings__microsoft = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** oauth_scopes *)
}

type auth_settings__google = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** oauth_scopes *)
}

type auth_settings__github = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** oauth_scopes *)
}

type auth_settings__facebook = {
  app_id : string prop;  (** app_id *)
  app_secret : string prop;  (** app_secret *)
  app_secret_setting_name : string prop;
      (** app_secret_setting_name *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** oauth_scopes *)
}

type auth_settings__active_directory = {
  allowed_audiences : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
}

type auth_settings = {
  active_directory : auth_settings__active_directory list;
      [@default []] [@yojson_drop_default ( = )]
      (** active_directory *)
  additional_login_parameters : (string * string prop) list;
      (** additional_login_parameters *)
  allowed_external_redirect_urls : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_external_redirect_urls *)
  default_provider : string prop;  (** default_provider *)
  enabled : bool prop;  (** enabled *)
  facebook : auth_settings__facebook list;
      [@default []] [@yojson_drop_default ( = )]
      (** facebook *)
  github : auth_settings__github list;
      [@default []] [@yojson_drop_default ( = )]
      (** github *)
  google : auth_settings__google list;
      [@default []] [@yojson_drop_default ( = )]
      (** google *)
  issuer : string prop;  (** issuer *)
  microsoft : auth_settings__microsoft list;
      [@default []] [@yojson_drop_default ( = )]
      (** microsoft *)
  runtime_version : string prop;  (** runtime_version *)
  token_refresh_extension_hours : float prop;
      (** token_refresh_extension_hours *)
  token_store_enabled : bool prop;  (** token_store_enabled *)
  twitter : auth_settings__twitter list;
      [@default []] [@yojson_drop_default ( = )]
      (** twitter *)
  unauthenticated_client_action : string prop;
      (** unauthenticated_client_action *)
}

type auth_settings_v2__twitter_v2 = {
  consumer_key : string prop;  (** consumer_key *)
  consumer_secret_setting_name : string prop;
      (** consumer_secret_setting_name *)
}

type auth_settings_v2__microsoft_v2 = {
  allowed_audiences : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** login_scopes *)
}

type auth_settings_v2__login = {
  allowed_external_redirect_urls : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_external_redirect_urls *)
  cookie_expiration_convention : string prop;
      (** cookie_expiration_convention *)
  cookie_expiration_time : string prop;
      (** cookie_expiration_time *)
  logout_endpoint : string prop;  (** logout_endpoint *)
  nonce_expiration_time : string prop;  (** nonce_expiration_time *)
  preserve_url_fragments_for_logins : bool prop;
      (** preserve_url_fragments_for_logins *)
  token_refresh_extension_time : float prop;
      (** token_refresh_extension_time *)
  token_store_enabled : bool prop;  (** token_store_enabled *)
  token_store_path : string prop;  (** token_store_path *)
  token_store_sas_setting_name : string prop;
      (** token_store_sas_setting_name *)
  validate_nonce : bool prop;  (** validate_nonce *)
}

type auth_settings_v2__google_v2 = {
  allowed_audiences : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** login_scopes *)
}

type auth_settings_v2__github_v2 = {
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** login_scopes *)
}

type auth_settings_v2__facebook_v2 = {
  app_id : string prop;  (** app_id *)
  app_secret_setting_name : string prop;
      (** app_secret_setting_name *)
  graph_api_version : string prop;  (** graph_api_version *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** login_scopes *)
}

type auth_settings_v2__custom_oidc_v2 = {
  authorisation_endpoint : string prop;
      (** authorisation_endpoint *)
  certification_uri : string prop;  (** certification_uri *)
  client_credential_method : string prop;
      (** client_credential_method *)
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  issuer_endpoint : string prop;  (** issuer_endpoint *)
  name : string prop;  (** name *)
  name_claim_type : string prop;  (** name_claim_type *)
  openid_configuration_endpoint : string prop;
      (** openid_configuration_endpoint *)
  scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** scopes *)
  token_endpoint : string prop;  (** token_endpoint *)
}

type auth_settings_v2__azure_static_web_app_v2 = {
  client_id : string prop;  (** client_id *)
}

type auth_settings_v2__apple_v2 = {
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** login_scopes *)
}

type auth_settings_v2__active_directory_v2 = {
  allowed_applications : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_applications *)
  allowed_audiences : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_audiences *)
  allowed_groups : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_groups *)
  allowed_identities : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_identities *)
  client_id : string prop;  (** client_id *)
  client_secret_certificate_thumbprint : string prop;
      (** client_secret_certificate_thumbprint *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  jwt_allowed_client_applications : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** jwt_allowed_client_applications *)
  jwt_allowed_groups : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** jwt_allowed_groups *)
  login_parameters : (string * string prop) list;
      (** login_parameters *)
  tenant_auth_endpoint : string prop;  (** tenant_auth_endpoint *)
  www_authentication_disabled : bool prop;
      (** www_authentication_disabled *)
}

type auth_settings_v2 = {
  active_directory_v2 : auth_settings_v2__active_directory_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** active_directory_v2 *)
  apple_v2 : auth_settings_v2__apple_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** apple_v2 *)
  auth_enabled : bool prop;  (** auth_enabled *)
  azure_static_web_app_v2 :
    auth_settings_v2__azure_static_web_app_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** azure_static_web_app_v2 *)
  config_file_path : string prop;  (** config_file_path *)
  custom_oidc_v2 : auth_settings_v2__custom_oidc_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** custom_oidc_v2 *)
  default_provider : string prop;  (** default_provider *)
  excluded_paths : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** excluded_paths *)
  facebook_v2 : auth_settings_v2__facebook_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** facebook_v2 *)
  forward_proxy_convention : string prop;
      (** forward_proxy_convention *)
  forward_proxy_custom_host_header_name : string prop;
      (** forward_proxy_custom_host_header_name *)
  forward_proxy_custom_scheme_header_name : string prop;
      (** forward_proxy_custom_scheme_header_name *)
  github_v2 : auth_settings_v2__github_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** github_v2 *)
  google_v2 : auth_settings_v2__google_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** google_v2 *)
  http_route_api_prefix : string prop;  (** http_route_api_prefix *)
  login : auth_settings_v2__login list;
      [@default []] [@yojson_drop_default ( = )]
      (** login *)
  microsoft_v2 : auth_settings_v2__microsoft_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** microsoft_v2 *)
  require_authentication : bool prop;  (** require_authentication *)
  require_https : bool prop;  (** require_https *)
  runtime_version : string prop;  (** runtime_version *)
  twitter_v2 : auth_settings_v2__twitter_v2 list;
      [@default []] [@yojson_drop_default ( = )]
      (** twitter_v2 *)
  unauthenticated_action : string prop;  (** unauthenticated_action *)
}

type backup__schedule = {
  frequency_interval : float prop;  (** frequency_interval *)
  frequency_unit : string prop;  (** frequency_unit *)
  keep_at_least_one_backup : bool prop;
      (** keep_at_least_one_backup *)
  last_execution_time : string prop;  (** last_execution_time *)
  retention_period_days : float prop;  (** retention_period_days *)
  start_time : string prop;  (** start_time *)
}

type backup = {
  enabled : bool prop;  (** enabled *)
  name : string prop;  (** name *)
  schedule : backup__schedule list;
      [@default []] [@yojson_drop_default ( = )]
      (** schedule *)
  storage_account_url : string prop;  (** storage_account_url *)
}

type connection_string = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_host *)
}

type site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  description : string prop;  (** description *)
  headers : site_config__scm_ip_restriction__headers list;
      [@default []] [@yojson_drop_default ( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_host *)
}

type site_config__ip_restriction = {
  action : string prop;  (** action *)
  description : string prop;  (** description *)
  headers : site_config__ip_restriction__headers list;
      [@default []] [@yojson_drop_default ( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__cors = {
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_origins *)
  support_credentials : bool prop;  (** support_credentials *)
}

type site_config__application_stack__docker = {
  image_name : string prop;  (** image_name *)
  image_tag : string prop;  (** image_tag *)
  registry_password : string prop;  (** registry_password *)
  registry_url : string prop;  (** registry_url *)
  registry_username : string prop;  (** registry_username *)
}

type site_config__application_stack = {
  docker : site_config__application_stack__docker list;
      [@default []] [@yojson_drop_default ( = )]
      (** docker *)
  dotnet_version : string prop;  (** dotnet_version *)
  java_version : string prop;  (** java_version *)
  node_version : string prop;  (** node_version *)
  powershell_core_version : string prop;
      (** powershell_core_version *)
  python_version : string prop;  (** python_version *)
  use_custom_runtime : bool prop;  (** use_custom_runtime *)
  use_dotnet_isolated_runtime : bool prop;
      (** use_dotnet_isolated_runtime *)
}

type site_config__app_service_logs = {
  disk_quota_mb : float prop;  (** disk_quota_mb *)
  retention_period_days : float prop;  (** retention_period_days *)
}

type site_config = {
  always_on : bool prop;  (** always_on *)
  api_definition_url : string prop;  (** api_definition_url *)
  api_management_api_id : string prop;  (** api_management_api_id *)
  app_command_line : string prop;  (** app_command_line *)
  app_scale_limit : float prop;  (** app_scale_limit *)
  app_service_logs : site_config__app_service_logs list;
      [@default []] [@yojson_drop_default ( = )]
      (** app_service_logs *)
  application_insights_connection_string : string prop;
      (** application_insights_connection_string *)
  application_insights_key : string prop;
      (** application_insights_key *)
  application_stack : site_config__application_stack list;
      [@default []] [@yojson_drop_default ( = )]
      (** application_stack *)
  container_registry_managed_identity_client_id : string prop;
      (** container_registry_managed_identity_client_id *)
  container_registry_use_managed_identity : bool prop;
      (** container_registry_use_managed_identity *)
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default ( = )]
      (** cors *)
  default_documents : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** default_documents *)
  detailed_error_logging_enabled : bool prop;
      (** detailed_error_logging_enabled *)
  elastic_instance_minimum : float prop;
      (** elastic_instance_minimum *)
  ftps_state : string prop;  (** ftps_state *)
  health_check_eviction_time_in_min : float prop;
      (** health_check_eviction_time_in_min *)
  health_check_path : string prop;  (** health_check_path *)
  http2_enabled : bool prop;  (** http2_enabled *)
  ip_restriction : site_config__ip_restriction list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_restriction *)
  ip_restriction_default_action : string prop;
      (** ip_restriction_default_action *)
  linux_fx_version : string prop;  (** linux_fx_version *)
  load_balancing_mode : string prop;  (** load_balancing_mode *)
  managed_pipeline_mode : string prop;  (** managed_pipeline_mode *)
  minimum_tls_version : string prop;  (** minimum_tls_version *)
  pre_warmed_instance_count : float prop;
      (** pre_warmed_instance_count *)
  remote_debugging_enabled : bool prop;
      (** remote_debugging_enabled *)
  remote_debugging_version : string prop;
      (** remote_debugging_version *)
  runtime_scale_monitoring_enabled : bool prop;
      (** runtime_scale_monitoring_enabled *)
  scm_ip_restriction : site_config__scm_ip_restriction list;
      [@default []] [@yojson_drop_default ( = )]
      (** scm_ip_restriction *)
  scm_ip_restriction_default_action : string prop;
      (** scm_ip_restriction_default_action *)
  scm_minimum_tls_version : string prop;
      (** scm_minimum_tls_version *)
  scm_type : string prop;  (** scm_type *)
  scm_use_main_ip_restriction : bool prop;
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker : bool prop;  (** use_32_bit_worker *)
  vnet_route_all_enabled : bool prop;  (** vnet_route_all_enabled *)
  websockets_enabled : bool prop;  (** websockets_enabled *)
  worker_count : float prop;  (** worker_count *)
}

type site_credential = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
}

type sticky_settings = {
  app_setting_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** app_setting_names *)
  connection_string_names : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** connection_string_names *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_linux_function_app

val azurerm_linux_function_app :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_linux_function_app

val yojson_of_azurerm_linux_function_app :
  azurerm_linux_function_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_settings : (string * string) list prop;
  auth_settings : auth_settings list prop;
  auth_settings_v2 : auth_settings_v2 list prop;
  availability : string prop;
  backup : backup list prop;
  builtin_logging_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  connection_string : connection_string list prop;
  content_share_force_disabled : bool prop;
  custom_domain_verification_id : string prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
  functions_extension_version : string prop;
  hosting_environment_id : string prop;
  https_only : bool prop;
  id : string prop;
  identity : identity list prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  service_plan_id : string prop;
  site_config : site_config list prop;
  site_credential : site_credential list prop;
  sticky_settings : sticky_settings list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_key_vault_secret_id : string prop;
  storage_uses_managed_identity : bool prop;
  tags : (string * string) list prop;
  usage : string prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
