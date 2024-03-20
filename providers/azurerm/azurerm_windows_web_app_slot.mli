(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type site_credential = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
}

type auth_settings__active_directory

val auth_settings__active_directory :
  ?allowed_audiences:string prop list ->
  ?client_secret:string prop ->
  ?client_secret_setting_name:string prop ->
  client_id:string prop ->
  unit ->
  auth_settings__active_directory

type auth_settings__facebook

val auth_settings__facebook :
  ?app_secret:string prop ->
  ?app_secret_setting_name:string prop ->
  ?oauth_scopes:string prop list ->
  app_id:string prop ->
  unit ->
  auth_settings__facebook

type auth_settings__github

val auth_settings__github :
  ?client_secret:string prop ->
  ?client_secret_setting_name:string prop ->
  ?oauth_scopes:string prop list ->
  client_id:string prop ->
  unit ->
  auth_settings__github

type auth_settings__google

val auth_settings__google :
  ?client_secret:string prop ->
  ?client_secret_setting_name:string prop ->
  ?oauth_scopes:string prop list ->
  client_id:string prop ->
  unit ->
  auth_settings__google

type auth_settings__microsoft

val auth_settings__microsoft :
  ?client_secret:string prop ->
  ?client_secret_setting_name:string prop ->
  ?oauth_scopes:string prop list ->
  client_id:string prop ->
  unit ->
  auth_settings__microsoft

type auth_settings__twitter

val auth_settings__twitter :
  ?consumer_secret:string prop ->
  ?consumer_secret_setting_name:string prop ->
  consumer_key:string prop ->
  unit ->
  auth_settings__twitter

type auth_settings

val auth_settings :
  ?additional_login_parameters:(string * string prop) list ->
  ?allowed_external_redirect_urls:string prop list ->
  ?default_provider:string prop ->
  ?issuer:string prop ->
  ?runtime_version:string prop ->
  ?token_refresh_extension_hours:float prop ->
  ?token_store_enabled:bool prop ->
  ?unauthenticated_client_action:string prop ->
  enabled:bool prop ->
  active_directory:auth_settings__active_directory list ->
  facebook:auth_settings__facebook list ->
  github:auth_settings__github list ->
  google:auth_settings__google list ->
  microsoft:auth_settings__microsoft list ->
  twitter:auth_settings__twitter list ->
  unit ->
  auth_settings

type auth_settings_v2__active_directory_v2

val auth_settings_v2__active_directory_v2 :
  ?allowed_applications:string prop list ->
  ?allowed_audiences:string prop list ->
  ?allowed_groups:string prop list ->
  ?allowed_identities:string prop list ->
  ?client_secret_certificate_thumbprint:string prop ->
  ?client_secret_setting_name:string prop ->
  ?jwt_allowed_client_applications:string prop list ->
  ?jwt_allowed_groups:string prop list ->
  ?login_parameters:(string * string prop) list ->
  ?www_authentication_disabled:bool prop ->
  client_id:string prop ->
  tenant_auth_endpoint:string prop ->
  unit ->
  auth_settings_v2__active_directory_v2

type auth_settings_v2__apple_v2

val auth_settings_v2__apple_v2 :
  client_id:string prop ->
  client_secret_setting_name:string prop ->
  unit ->
  auth_settings_v2__apple_v2

type auth_settings_v2__azure_static_web_app_v2

val auth_settings_v2__azure_static_web_app_v2 :
  client_id:string prop ->
  unit ->
  auth_settings_v2__azure_static_web_app_v2

type auth_settings_v2__custom_oidc_v2

val auth_settings_v2__custom_oidc_v2 :
  ?name_claim_type:string prop ->
  ?scopes:string prop list ->
  client_id:string prop ->
  name:string prop ->
  openid_configuration_endpoint:string prop ->
  unit ->
  auth_settings_v2__custom_oidc_v2

type auth_settings_v2__facebook_v2

val auth_settings_v2__facebook_v2 :
  ?graph_api_version:string prop ->
  ?login_scopes:string prop list ->
  app_id:string prop ->
  app_secret_setting_name:string prop ->
  unit ->
  auth_settings_v2__facebook_v2

type auth_settings_v2__github_v2

val auth_settings_v2__github_v2 :
  ?login_scopes:string prop list ->
  client_id:string prop ->
  client_secret_setting_name:string prop ->
  unit ->
  auth_settings_v2__github_v2

type auth_settings_v2__google_v2

val auth_settings_v2__google_v2 :
  ?allowed_audiences:string prop list ->
  ?login_scopes:string prop list ->
  client_id:string prop ->
  client_secret_setting_name:string prop ->
  unit ->
  auth_settings_v2__google_v2

type auth_settings_v2__login

val auth_settings_v2__login :
  ?allowed_external_redirect_urls:string prop list ->
  ?cookie_expiration_convention:string prop ->
  ?cookie_expiration_time:string prop ->
  ?logout_endpoint:string prop ->
  ?nonce_expiration_time:string prop ->
  ?preserve_url_fragments_for_logins:bool prop ->
  ?token_refresh_extension_time:float prop ->
  ?token_store_enabled:bool prop ->
  ?token_store_path:string prop ->
  ?token_store_sas_setting_name:string prop ->
  ?validate_nonce:bool prop ->
  unit ->
  auth_settings_v2__login

type auth_settings_v2__microsoft_v2

val auth_settings_v2__microsoft_v2 :
  ?allowed_audiences:string prop list ->
  ?login_scopes:string prop list ->
  client_id:string prop ->
  client_secret_setting_name:string prop ->
  unit ->
  auth_settings_v2__microsoft_v2

type auth_settings_v2__twitter_v2

val auth_settings_v2__twitter_v2 :
  consumer_key:string prop ->
  consumer_secret_setting_name:string prop ->
  unit ->
  auth_settings_v2__twitter_v2

type auth_settings_v2

val auth_settings_v2 :
  ?auth_enabled:bool prop ->
  ?config_file_path:string prop ->
  ?default_provider:string prop ->
  ?excluded_paths:string prop list ->
  ?forward_proxy_convention:string prop ->
  ?forward_proxy_custom_host_header_name:string prop ->
  ?forward_proxy_custom_scheme_header_name:string prop ->
  ?http_route_api_prefix:string prop ->
  ?require_authentication:bool prop ->
  ?require_https:bool prop ->
  ?runtime_version:string prop ->
  ?unauthenticated_action:string prop ->
  active_directory_v2:auth_settings_v2__active_directory_v2 list ->
  apple_v2:auth_settings_v2__apple_v2 list ->
  azure_static_web_app_v2:
    auth_settings_v2__azure_static_web_app_v2 list ->
  custom_oidc_v2:auth_settings_v2__custom_oidc_v2 list ->
  facebook_v2:auth_settings_v2__facebook_v2 list ->
  github_v2:auth_settings_v2__github_v2 list ->
  google_v2:auth_settings_v2__google_v2 list ->
  login:auth_settings_v2__login list ->
  microsoft_v2:auth_settings_v2__microsoft_v2 list ->
  twitter_v2:auth_settings_v2__twitter_v2 list ->
  unit ->
  auth_settings_v2

type backup__schedule

val backup__schedule :
  ?keep_at_least_one_backup:bool prop ->
  ?retention_period_days:float prop ->
  ?start_time:string prop ->
  frequency_interval:float prop ->
  frequency_unit:string prop ->
  unit ->
  backup__schedule

type backup

val backup :
  ?enabled:bool prop ->
  name:string prop ->
  storage_account_url:string prop ->
  schedule:backup__schedule list ->
  unit ->
  backup

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
  file_system_level:string prop ->
  azure_blob_storage:logs__application_logs__azure_blob_storage list ->
  unit ->
  logs__application_logs

type logs__http_logs__azure_blob_storage

val logs__http_logs__azure_blob_storage :
  ?retention_in_days:float prop ->
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
  azure_blob_storage:logs__http_logs__azure_blob_storage list ->
  file_system:logs__http_logs__file_system list ->
  unit ->
  logs__http_logs

type logs

val logs :
  ?detailed_error_messages:bool prop ->
  ?failed_request_tracing:bool prop ->
  application_logs:logs__application_logs list ->
  http_logs:logs__http_logs list ->
  unit ->
  logs

type site_config__application_stack

val site_config__application_stack :
  ?current_stack:string prop ->
  ?docker_container_name:string prop ->
  ?docker_container_registry:string prop ->
  ?docker_container_tag:string prop ->
  ?docker_image_name:string prop ->
  ?docker_registry_password:string prop ->
  ?docker_registry_url:string prop ->
  ?docker_registry_username:string prop ->
  ?dotnet_core_version:string prop ->
  ?dotnet_version:string prop ->
  ?java_container:string prop ->
  ?java_container_version:string prop ->
  ?java_embedded_server_enabled:bool prop ->
  ?java_version:string prop ->
  ?node_version:string prop ->
  ?php_version:string prop ->
  ?python:bool prop ->
  ?python_version:string prop ->
  ?tomcat_version:string prop ->
  unit ->
  site_config__application_stack

type site_config__auto_heal_setting__action__custom_action

val site_config__auto_heal_setting__action__custom_action :
  ?parameters:string prop ->
  executable:string prop ->
  unit ->
  site_config__auto_heal_setting__action__custom_action

type site_config__auto_heal_setting__action

val site_config__auto_heal_setting__action :
  ?minimum_process_execution_time:string prop ->
  action_type:string prop ->
  custom_action:
    site_config__auto_heal_setting__action__custom_action list ->
  unit ->
  site_config__auto_heal_setting__action

type site_config__auto_heal_setting__trigger__requests

val site_config__auto_heal_setting__trigger__requests :
  count:float prop ->
  interval:string prop ->
  unit ->
  site_config__auto_heal_setting__trigger__requests

type site_config__auto_heal_setting__trigger__slow_request

val site_config__auto_heal_setting__trigger__slow_request :
  ?path:string prop ->
  count:float prop ->
  interval:string prop ->
  time_taken:string prop ->
  unit ->
  site_config__auto_heal_setting__trigger__slow_request

type site_config__auto_heal_setting__trigger__status_code

val site_config__auto_heal_setting__trigger__status_code :
  ?path:string prop ->
  ?sub_status:float prop ->
  ?win32_status_code:float prop ->
  count:float prop ->
  interval:string prop ->
  status_code_range:string prop ->
  unit ->
  site_config__auto_heal_setting__trigger__status_code

type site_config__auto_heal_setting__trigger

val site_config__auto_heal_setting__trigger :
  ?private_memory_kb:float prop ->
  requests:site_config__auto_heal_setting__trigger__requests list ->
  slow_request:
    site_config__auto_heal_setting__trigger__slow_request list ->
  status_code:
    site_config__auto_heal_setting__trigger__status_code list ->
  unit ->
  site_config__auto_heal_setting__trigger

type site_config__auto_heal_setting

val site_config__auto_heal_setting :
  action:site_config__auto_heal_setting__action list ->
  trigger:site_config__auto_heal_setting__trigger list ->
  unit ->
  site_config__auto_heal_setting

type site_config__cors

val site_config__cors :
  ?allowed_origins:string prop list ->
  ?support_credentials:bool prop ->
  unit ->
  site_config__cors

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type site_config__ip_restriction

val site_config__ip_restriction :
  ?action:string prop ->
  ?description:string prop ->
  ?headers:site_config__ip_restriction__headers list ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?priority:float prop ->
  ?service_tag:string prop ->
  ?virtual_network_subnet_id:string prop ->
  unit ->
  site_config__ip_restriction

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type site_config__scm_ip_restriction

val site_config__scm_ip_restriction :
  ?action:string prop ->
  ?description:string prop ->
  ?headers:site_config__scm_ip_restriction__headers list ->
  ?ip_address:string prop ->
  ?name:string prop ->
  ?priority:float prop ->
  ?service_tag:string prop ->
  ?virtual_network_subnet_id:string prop ->
  unit ->
  site_config__scm_ip_restriction

type site_config__virtual_application__virtual_directory

val site_config__virtual_application__virtual_directory :
  ?physical_path:string prop ->
  ?virtual_path:string prop ->
  unit ->
  site_config__virtual_application__virtual_directory

type site_config__virtual_application

val site_config__virtual_application :
  physical_path:string prop ->
  preload:bool prop ->
  virtual_path:string prop ->
  virtual_directory:
    site_config__virtual_application__virtual_directory list ->
  unit ->
  site_config__virtual_application

type site_config

val site_config :
  ?always_on:bool prop ->
  ?api_definition_url:string prop ->
  ?api_management_api_id:string prop ->
  ?app_command_line:string prop ->
  ?auto_heal_enabled:bool prop ->
  ?auto_swap_slot_name:string prop ->
  ?container_registry_managed_identity_client_id:string prop ->
  ?container_registry_use_managed_identity:bool prop ->
  ?default_documents:string prop list ->
  ?ftps_state:string prop ->
  ?health_check_eviction_time_in_min:float prop ->
  ?health_check_path:string prop ->
  ?http2_enabled:bool prop ->
  ?ip_restriction_default_action:string prop ->
  ?load_balancing_mode:string prop ->
  ?local_mysql_enabled:bool prop ->
  ?managed_pipeline_mode:string prop ->
  ?minimum_tls_version:string prop ->
  ?remote_debugging_enabled:bool prop ->
  ?remote_debugging_version:string prop ->
  ?scm_ip_restriction_default_action:string prop ->
  ?scm_minimum_tls_version:string prop ->
  ?scm_use_main_ip_restriction:bool prop ->
  ?use_32_bit_worker:bool prop ->
  ?vnet_route_all_enabled:bool prop ->
  ?websockets_enabled:bool prop ->
  ?worker_count:float prop ->
  application_stack:site_config__application_stack list ->
  auto_heal_setting:site_config__auto_heal_setting list ->
  cors:site_config__cors list ->
  ip_restriction:site_config__ip_restriction list ->
  scm_ip_restriction:site_config__scm_ip_restriction list ->
  virtual_application:site_config__virtual_application list ->
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

type azurerm_windows_web_app_slot

val azurerm_windows_web_app_slot :
  ?app_settings:(string * string prop) list ->
  ?client_affinity_enabled:bool prop ->
  ?client_certificate_enabled:bool prop ->
  ?client_certificate_exclusion_paths:string prop ->
  ?client_certificate_mode:string prop ->
  ?enabled:bool prop ->
  ?ftp_publish_basic_authentication_enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?service_plan_id:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?zip_deploy_file:string prop ->
  ?timeouts:timeouts ->
  app_service_id:string prop ->
  name:string prop ->
  auth_settings:auth_settings list ->
  auth_settings_v2:auth_settings_v2 list ->
  backup:backup list ->
  connection_string:connection_string list ->
  identity:identity list ->
  logs:logs list ->
  site_config:site_config list ->
  storage_account:storage_account list ->
  unit ->
  azurerm_windows_web_app_slot

val yojson_of_azurerm_windows_web_app_slot :
  azurerm_windows_web_app_slot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_service_id : string prop;
  app_settings : (string * string) list prop;
  client_affinity_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
  hosting_environment_id : string prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  kind : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  public_network_access_enabled : bool prop;
  service_plan_id : string prop;
  site_credential : site_credential list prop;
  tags : (string * string) list prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
  zip_deploy_file : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_settings:(string * string prop) list ->
  ?client_affinity_enabled:bool prop ->
  ?client_certificate_enabled:bool prop ->
  ?client_certificate_exclusion_paths:string prop ->
  ?client_certificate_mode:string prop ->
  ?enabled:bool prop ->
  ?ftp_publish_basic_authentication_enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?service_plan_id:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?zip_deploy_file:string prop ->
  ?timeouts:timeouts ->
  app_service_id:string prop ->
  name:string prop ->
  auth_settings:auth_settings list ->
  auth_settings_v2:auth_settings_v2 list ->
  backup:backup list ->
  connection_string:connection_string list ->
  identity:identity list ->
  logs:logs list ->
  site_config:site_config list ->
  storage_account:storage_account list ->
  string ->
  t

val make :
  ?app_settings:(string * string prop) list ->
  ?client_affinity_enabled:bool prop ->
  ?client_certificate_enabled:bool prop ->
  ?client_certificate_exclusion_paths:string prop ->
  ?client_certificate_mode:string prop ->
  ?enabled:bool prop ->
  ?ftp_publish_basic_authentication_enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?service_plan_id:string prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?zip_deploy_file:string prop ->
  ?timeouts:timeouts ->
  app_service_id:string prop ->
  name:string prop ->
  auth_settings:auth_settings list ->
  auth_settings_v2:auth_settings_v2 list ->
  backup:backup list ->
  connection_string:connection_string list ->
  identity:identity list ->
  logs:logs list ->
  site_config:site_config list ->
  storage_account:storage_account list ->
  string ->
  t Tf_core.resource
