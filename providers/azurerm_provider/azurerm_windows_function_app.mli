(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_windows_function_app__auth_settings__active_directory
type azurerm_windows_function_app__auth_settings__facebook
type azurerm_windows_function_app__auth_settings__github
type azurerm_windows_function_app__auth_settings__google
type azurerm_windows_function_app__auth_settings__microsoft
type azurerm_windows_function_app__auth_settings__twitter
type azurerm_windows_function_app__auth_settings

type azurerm_windows_function_app__auth_settings_v2__active_directory_v2

type azurerm_windows_function_app__auth_settings_v2__apple_v2

type azurerm_windows_function_app__auth_settings_v2__azure_static_web_app_v2

type azurerm_windows_function_app__auth_settings_v2__custom_oidc_v2
type azurerm_windows_function_app__auth_settings_v2__facebook_v2
type azurerm_windows_function_app__auth_settings_v2__github_v2
type azurerm_windows_function_app__auth_settings_v2__google_v2
type azurerm_windows_function_app__auth_settings_v2__login
type azurerm_windows_function_app__auth_settings_v2__microsoft_v2
type azurerm_windows_function_app__auth_settings_v2__twitter_v2
type azurerm_windows_function_app__auth_settings_v2
type azurerm_windows_function_app__backup__schedule
type azurerm_windows_function_app__backup
type azurerm_windows_function_app__connection_string
type azurerm_windows_function_app__identity
type azurerm_windows_function_app__site_config__app_service_logs
type azurerm_windows_function_app__site_config__application_stack
type azurerm_windows_function_app__site_config__cors

type azurerm_windows_function_app__site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_windows_function_app__site_config__ip_restriction

type azurerm_windows_function_app__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_windows_function_app__site_config__scm_ip_restriction
type azurerm_windows_function_app__site_config
type azurerm_windows_function_app__sticky_settings
type azurerm_windows_function_app__storage_account
type azurerm_windows_function_app__timeouts

type azurerm_windows_function_app__site_credential = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
}

type azurerm_windows_function_app

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
  functions_extension_version : string prop;
  hosting_environment_id : string prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
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
  site_credential :
    azurerm_windows_function_app__site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_key_vault_secret_id : string prop;
  storage_uses_managed_identity : bool prop;
  tags : (string * string) list prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
  zip_deploy_file : string prop;
}

val azurerm_windows_function_app :
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
  ?storage_account_access_key:string prop ->
  ?storage_account_name:string prop ->
  ?storage_key_vault_secret_id:string prop ->
  ?storage_uses_managed_identity:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?zip_deploy_file:string prop ->
  ?timeouts:azurerm_windows_function_app__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_plan_id:string prop ->
  auth_settings:azurerm_windows_function_app__auth_settings list ->
  auth_settings_v2:
    azurerm_windows_function_app__auth_settings_v2 list ->
  backup:azurerm_windows_function_app__backup list ->
  connection_string:
    azurerm_windows_function_app__connection_string list ->
  identity:azurerm_windows_function_app__identity list ->
  site_config:azurerm_windows_function_app__site_config list ->
  sticky_settings:azurerm_windows_function_app__sticky_settings list ->
  storage_account:azurerm_windows_function_app__storage_account list ->
  string ->
  t
