(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type site_credential = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
}

[@@@deriving.end]

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

type site_config__app_service_logs

val site_config__app_service_logs :
  ?disk_quota_mb:float prop ->
  ?retention_period_days:float prop ->
  unit ->
  site_config__app_service_logs

type site_config__application_stack

val site_config__application_stack :
  ?dotnet_version:string prop ->
  ?java_version:string prop ->
  ?node_version:string prop ->
  ?powershell_core_version:string prop ->
  ?use_custom_runtime:bool prop ->
  ?use_dotnet_isolated_runtime:bool prop ->
  unit ->
  site_config__application_stack

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

[@@@deriving.end]

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

[@@@deriving.end]

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

type site_config

val site_config :
  ?always_on:bool prop ->
  ?api_definition_url:string prop ->
  ?api_management_api_id:string prop ->
  ?app_command_line:string prop ->
  ?app_scale_limit:float prop ->
  ?application_insights_connection_string:string prop ->
  ?application_insights_key:string prop ->
  ?auto_swap_slot_name:string prop ->
  ?default_documents:string prop list ->
  ?elastic_instance_minimum:float prop ->
  ?ftps_state:string prop ->
  ?health_check_eviction_time_in_min:float prop ->
  ?health_check_path:string prop ->
  ?http2_enabled:bool prop ->
  ?ip_restriction_default_action:string prop ->
  ?load_balancing_mode:string prop ->
  ?managed_pipeline_mode:string prop ->
  ?minimum_tls_version:string prop ->
  ?pre_warmed_instance_count:float prop ->
  ?remote_debugging_enabled:bool prop ->
  ?remote_debugging_version:string prop ->
  ?runtime_scale_monitoring_enabled:bool prop ->
  ?scm_ip_restriction_default_action:string prop ->
  ?scm_minimum_tls_version:string prop ->
  ?scm_use_main_ip_restriction:bool prop ->
  ?use_32_bit_worker:bool prop ->
  ?vnet_route_all_enabled:bool prop ->
  ?websockets_enabled:bool prop ->
  ?worker_count:float prop ->
  app_service_logs:site_config__app_service_logs list ->
  application_stack:site_config__application_stack list ->
  cors:site_config__cors list ->
  ip_restriction:site_config__ip_restriction list ->
  scm_ip_restriction:site_config__scm_ip_restriction list ->
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

type azurerm_windows_function_app_slot

val azurerm_windows_function_app_slot :
  ?app_settings:(string * string prop) list ->
  ?builtin_logging_enabled:bool prop ->
  ?client_certificate_enabled:bool prop ->
  ?client_certificate_exclusion_paths:string prop ->
  ?client_certificate_mode:string prop ->
  ?content_share_force_disabled:bool prop ->
  ?daily_memory_time_quota:float prop ->
  ?enabled:bool prop ->
  ?ftp_publish_basic_authentication_enabled:bool prop ->
  ?functions_extension_version:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?service_plan_id:string prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_name:string prop ->
  ?storage_key_vault_secret_id:string prop ->
  ?storage_uses_managed_identity:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?timeouts:timeouts ->
  function_app_id:string prop ->
  name:string prop ->
  auth_settings:auth_settings list ->
  auth_settings_v2:auth_settings_v2 list ->
  backup:backup list ->
  connection_string:connection_string list ->
  identity:identity list ->
  site_config:site_config list ->
  storage_account:storage_account list ->
  unit ->
  azurerm_windows_function_app_slot

val yojson_of_azurerm_windows_function_app_slot :
  azurerm_windows_function_app_slot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_settings : (string * string) list prop;
  builtin_logging_enabled : bool prop;
  client_certificate_enabled : bool prop;
  client_certificate_exclusion_paths : string prop;
  client_certificate_mode : string prop;
  content_share_force_disabled : bool prop;
  custom_domain_verification_id : string prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enabled : bool prop;
  ftp_publish_basic_authentication_enabled : bool prop;
  function_app_id : string prop;
  functions_extension_version : string prop;
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
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_key_vault_secret_id : string prop;
  storage_uses_managed_identity : bool prop;
  tags : (string * string) list prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_settings:(string * string prop) list ->
  ?builtin_logging_enabled:bool prop ->
  ?client_certificate_enabled:bool prop ->
  ?client_certificate_exclusion_paths:string prop ->
  ?client_certificate_mode:string prop ->
  ?content_share_force_disabled:bool prop ->
  ?daily_memory_time_quota:float prop ->
  ?enabled:bool prop ->
  ?ftp_publish_basic_authentication_enabled:bool prop ->
  ?functions_extension_version:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?service_plan_id:string prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_name:string prop ->
  ?storage_key_vault_secret_id:string prop ->
  ?storage_uses_managed_identity:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?timeouts:timeouts ->
  function_app_id:string prop ->
  name:string prop ->
  auth_settings:auth_settings list ->
  auth_settings_v2:auth_settings_v2 list ->
  backup:backup list ->
  connection_string:connection_string list ->
  identity:identity list ->
  site_config:site_config list ->
  storage_account:storage_account list ->
  string ->
  t

val make :
  ?app_settings:(string * string prop) list ->
  ?builtin_logging_enabled:bool prop ->
  ?client_certificate_enabled:bool prop ->
  ?client_certificate_exclusion_paths:string prop ->
  ?client_certificate_mode:string prop ->
  ?content_share_force_disabled:bool prop ->
  ?daily_memory_time_quota:float prop ->
  ?enabled:bool prop ->
  ?ftp_publish_basic_authentication_enabled:bool prop ->
  ?functions_extension_version:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?service_plan_id:string prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_name:string prop ->
  ?storage_key_vault_secret_id:string prop ->
  ?storage_uses_managed_identity:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?timeouts:timeouts ->
  function_app_id:string prop ->
  name:string prop ->
  auth_settings:auth_settings list ->
  auth_settings_v2:auth_settings_v2 list ->
  backup:backup list ->
  connection_string:connection_string list ->
  identity:identity list ->
  site_config:site_config list ->
  storage_account:storage_account list ->
  string ->
  t Tf_core.resource
