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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oauth_scopes *)
}

type auth_settings__google = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oauth_scopes *)
}

type auth_settings__github = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oauth_scopes *)
}

type auth_settings__facebook = {
  app_id : string prop;  (** app_id *)
  app_secret : string prop;  (** app_secret *)
  app_secret_setting_name : string prop;
      (** app_secret_setting_name *)
  oauth_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oauth_scopes *)
}

type auth_settings__active_directory = {
  allowed_audiences : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
}

type auth_settings = {
  active_directory : auth_settings__active_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** active_directory *)
  additional_login_parameters : (string * string prop) list;
      (** additional_login_parameters *)
  allowed_external_redirect_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_external_redirect_urls *)
  default_provider : string prop;  (** default_provider *)
  enabled : bool prop;  (** enabled *)
  facebook : auth_settings__facebook list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** facebook *)
  github : auth_settings__github list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** github *)
  google : auth_settings__google list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** google *)
  issuer : string prop;  (** issuer *)
  microsoft : auth_settings__microsoft list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** microsoft *)
  runtime_version : string prop;  (** runtime_version *)
  token_refresh_extension_hours : float prop;
      (** token_refresh_extension_hours *)
  token_store_enabled : bool prop;  (** token_store_enabled *)
  twitter : auth_settings__twitter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** login_scopes *)
}

type auth_settings_v2__login = {
  allowed_external_redirect_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** login_scopes *)
}

type auth_settings_v2__github_v2 = {
  client_id : string prop;  (** client_id *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** login_scopes *)
}

type auth_settings_v2__facebook_v2 = {
  app_id : string prop;  (** app_id *)
  app_secret_setting_name : string prop;
      (** app_secret_setting_name *)
  graph_api_version : string prop;  (** graph_api_version *)
  login_scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** login_scopes *)
}

type auth_settings_v2__active_directory_v2 = {
  allowed_applications : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_applications *)
  allowed_audiences : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_audiences *)
  allowed_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_groups *)
  allowed_identities : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_identities *)
  client_id : string prop;  (** client_id *)
  client_secret_certificate_thumbprint : string prop;
      (** client_secret_certificate_thumbprint *)
  client_secret_setting_name : string prop;
      (** client_secret_setting_name *)
  jwt_allowed_client_applications : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** jwt_allowed_client_applications *)
  jwt_allowed_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** jwt_allowed_groups *)
  login_parameters : (string * string prop) list;
      (** login_parameters *)
  tenant_auth_endpoint : string prop;  (** tenant_auth_endpoint *)
  www_authentication_disabled : bool prop;
      (** www_authentication_disabled *)
}

type auth_settings_v2 = {
  active_directory_v2 : auth_settings_v2__active_directory_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** active_directory_v2 *)
  apple_v2 : auth_settings_v2__apple_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** apple_v2 *)
  auth_enabled : bool prop;  (** auth_enabled *)
  azure_static_web_app_v2 :
    auth_settings_v2__azure_static_web_app_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** azure_static_web_app_v2 *)
  config_file_path : string prop;  (** config_file_path *)
  custom_oidc_v2 : auth_settings_v2__custom_oidc_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** custom_oidc_v2 *)
  default_provider : string prop;  (** default_provider *)
  excluded_paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** excluded_paths *)
  facebook_v2 : auth_settings_v2__facebook_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** facebook_v2 *)
  forward_proxy_convention : string prop;
      (** forward_proxy_convention *)
  forward_proxy_custom_host_header_name : string prop;
      (** forward_proxy_custom_host_header_name *)
  forward_proxy_custom_scheme_header_name : string prop;
      (** forward_proxy_custom_scheme_header_name *)
  github_v2 : auth_settings_v2__github_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** github_v2 *)
  google_v2 : auth_settings_v2__google_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** google_v2 *)
  http_route_api_prefix : string prop;  (** http_route_api_prefix *)
  login : auth_settings_v2__login list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** login *)
  microsoft_v2 : auth_settings_v2__microsoft_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** microsoft_v2 *)
  require_authentication : bool prop;  (** require_authentication *)
  require_https : bool prop;  (** require_https *)
  runtime_version : string prop;  (** runtime_version *)
  twitter_v2 : auth_settings_v2__twitter_v2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type logs__http_logs__file_system = {
  retention_in_days : float prop;  (** retention_in_days *)
  retention_in_mb : float prop;  (** retention_in_mb *)
}

type logs__http_logs__azure_blob_storage = {
  retention_in_days : float prop;  (** retention_in_days *)
  sas_url : string prop;  (** sas_url *)
}

type logs__http_logs = {
  azure_blob_storage : logs__http_logs__azure_blob_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** azure_blob_storage *)
  file_system : logs__http_logs__file_system list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** file_system *)
}

type logs__application_logs__azure_blob_storage = {
  level : string prop;  (** level *)
  retention_in_days : float prop;  (** retention_in_days *)
  sas_url : string prop;  (** sas_url *)
}

type logs__application_logs = {
  azure_blob_storage :
    logs__application_logs__azure_blob_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** azure_blob_storage *)
  file_system_level : string prop;  (** file_system_level *)
}

type logs = {
  application_logs : logs__application_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** application_logs *)
  detailed_error_messages : bool prop;
      (** detailed_error_messages *)
  failed_request_tracing : bool prop;  (** failed_request_tracing *)
  http_logs : logs__http_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** http_logs *)
}

type site_config__virtual_application__virtual_directory = {
  physical_path : string prop;  (** physical_path *)
  virtual_path : string prop;  (** virtual_path *)
}

type site_config__virtual_application = {
  physical_path : string prop;  (** physical_path *)
  preload : bool prop;  (** preload *)
  virtual_directory :
    site_config__virtual_application__virtual_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_directory *)
  virtual_path : string prop;  (** virtual_path *)
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
  description : string prop;  (** description *)
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
  description : string prop;  (** description *)
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

type site_config__handler_mapping = {
  arguments : string prop;  (** arguments *)
  extension : string prop;  (** extension *)
  script_processor_path : string prop;  (** script_processor_path *)
}

type site_config__cors = {
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_origins *)
  support_credentials : bool prop;  (** support_credentials *)
}

type site_config__auto_heal_setting__trigger__status_code = {
  count : float prop;  (** count *)
  interval : string prop;  (** interval *)
  path : string prop;  (** path *)
  status_code_range : string prop;  (** status_code_range *)
  sub_status : float prop;  (** sub_status *)
  win32_status_code : float prop;  (** win32_status_code *)
}

type site_config__auto_heal_setting__trigger__slow_request_with_path = {
  count : float prop;  (** count *)
  interval : string prop;  (** interval *)
  path : string prop;  (** path *)
  time_taken : string prop;  (** time_taken *)
}

type site_config__auto_heal_setting__trigger__slow_request = {
  count : float prop;  (** count *)
  interval : string prop;  (** interval *)
  path : string prop;  (** path *)
  time_taken : string prop;  (** time_taken *)
}

type site_config__auto_heal_setting__trigger__requests = {
  count : float prop;  (** count *)
  interval : string prop;  (** interval *)
}

type site_config__auto_heal_setting__trigger = {
  private_memory_kb : float prop;  (** private_memory_kb *)
  requests : site_config__auto_heal_setting__trigger__requests list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** requests *)
  slow_request :
    site_config__auto_heal_setting__trigger__slow_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** slow_request *)
  slow_request_with_path :
    site_config__auto_heal_setting__trigger__slow_request_with_path
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** slow_request_with_path *)
  status_code :
    site_config__auto_heal_setting__trigger__status_code list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** status_code *)
}

type site_config__auto_heal_setting__action__custom_action = {
  executable : string prop;  (** executable *)
  parameters : string prop;  (** parameters *)
}

type site_config__auto_heal_setting__action = {
  action_type : string prop;  (** action_type *)
  custom_action :
    site_config__auto_heal_setting__action__custom_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** custom_action *)
  minimum_process_execution_time : string prop;
      (** minimum_process_execution_time *)
}

type site_config__auto_heal_setting = {
  action : site_config__auto_heal_setting__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action *)
  trigger : site_config__auto_heal_setting__trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** trigger *)
}

type site_config__application_stack = {
  current_stack : string prop;  (** current_stack *)
  docker_container_name : string prop;  (** docker_container_name *)
  docker_container_registry : string prop;
      (** docker_container_registry *)
  docker_container_tag : string prop;  (** docker_container_tag *)
  docker_image_name : string prop;  (** docker_image_name *)
  docker_registry_password : string prop;
      (** docker_registry_password *)
  docker_registry_url : string prop;  (** docker_registry_url *)
  docker_registry_username : string prop;
      (** docker_registry_username *)
  dotnet_core_version : string prop;  (** dotnet_core_version *)
  dotnet_version : string prop;  (** dotnet_version *)
  java_container : string prop;  (** java_container *)
  java_container_version : string prop;
      (** java_container_version *)
  java_embedded_server_enabled : bool prop;
      (** java_embedded_server_enabled *)
  java_version : string prop;  (** java_version *)
  node_version : string prop;  (** node_version *)
  php_version : string prop;  (** php_version *)
  python : bool prop;  (** python *)
  python_version : string prop;  (** python_version *)
  tomcat_version : string prop;  (** tomcat_version *)
}

type site_config = {
  always_on : bool prop;  (** always_on *)
  api_definition_url : string prop;  (** api_definition_url *)
  api_management_api_id : string prop;  (** api_management_api_id *)
  app_command_line : string prop;  (** app_command_line *)
  application_stack : site_config__application_stack list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** application_stack *)
  auto_heal_enabled : bool prop;  (** auto_heal_enabled *)
  auto_heal_setting : site_config__auto_heal_setting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** auto_heal_setting *)
  container_registry_managed_identity_client_id : string prop;
      (** container_registry_managed_identity_client_id *)
  container_registry_use_managed_identity : bool prop;
      (** container_registry_use_managed_identity *)
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cors *)
  default_documents : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** default_documents *)
  detailed_error_logging_enabled : bool prop;
      (** detailed_error_logging_enabled *)
  ftps_state : string prop;  (** ftps_state *)
  handler_mapping : site_config__handler_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** handler_mapping *)
  health_check_eviction_time_in_min : float prop;
      (** health_check_eviction_time_in_min *)
  health_check_path : string prop;  (** health_check_path *)
  http2_enabled : bool prop;  (** http2_enabled *)
  ip_restriction : site_config__ip_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_restriction *)
  ip_restriction_default_action : string prop;
      (** ip_restriction_default_action *)
  load_balancing_mode : string prop;  (** load_balancing_mode *)
  local_mysql_enabled : bool prop;  (** local_mysql_enabled *)
  managed_pipeline_mode : string prop;  (** managed_pipeline_mode *)
  minimum_tls_version : string prop;  (** minimum_tls_version *)
  remote_debugging_enabled : bool prop;
      (** remote_debugging_enabled *)
  remote_debugging_version : string prop;
      (** remote_debugging_version *)
  scm_ip_restriction : site_config__scm_ip_restriction list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** scm_ip_restriction *)
  scm_ip_restriction_default_action : string prop;
      (** scm_ip_restriction_default_action *)
  scm_minimum_tls_version : string prop;
      (** scm_minimum_tls_version *)
  scm_type : string prop;  (** scm_type *)
  scm_use_main_ip_restriction : bool prop;
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker : bool prop;  (** use_32_bit_worker *)
  virtual_application : site_config__virtual_application list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** virtual_application *)
  vnet_route_all_enabled : bool prop;  (** vnet_route_all_enabled *)
  websockets_enabled : bool prop;  (** websockets_enabled *)
  windows_fx_version : string prop;  (** windows_fx_version *)
  worker_count : float prop;  (** worker_count *)
}

type site_credential = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
}

type sticky_settings = {
  app_setting_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** app_setting_names *)
  connection_string_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** connection_string_names *)
}

type storage_account = {
  access_key : string prop;  (** access_key *)
  account_name : string prop;  (** account_name *)
  mount_path : string prop;  (** mount_path *)
  name : string prop;  (** name *)
  share_name : string prop;  (** share_name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_windows_web_app

val azurerm_windows_web_app :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_windows_web_app

val yojson_of_azurerm_windows_web_app :
  azurerm_windows_web_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_settings : (string * string) list prop;
  auth_settings : auth_settings list prop;
  auth_settings_v2 : auth_settings_v2 list prop;
  backup : backup list prop;
  client_affinity_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  connection_string : connection_string list prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
  hosting_environment_id : string prop;
  https_only : bool prop;
  id : string prop;
  identity : identity list prop;
  kind : string prop;
  location : string prop;
  logs : logs list prop;
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
  storage_account : storage_account list prop;
  tags : (string * string) list prop;
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
