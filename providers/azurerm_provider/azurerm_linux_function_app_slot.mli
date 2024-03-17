(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_linux_function_app_slot__auth_settings__active_directory
type azurerm_linux_function_app_slot__auth_settings__facebook
type azurerm_linux_function_app_slot__auth_settings__github
type azurerm_linux_function_app_slot__auth_settings__google
type azurerm_linux_function_app_slot__auth_settings__microsoft
type azurerm_linux_function_app_slot__auth_settings__twitter
type azurerm_linux_function_app_slot__auth_settings

type azurerm_linux_function_app_slot__auth_settings_v2__active_directory_v2

type azurerm_linux_function_app_slot__auth_settings_v2__apple_v2

type azurerm_linux_function_app_slot__auth_settings_v2__azure_static_web_app_v2

type azurerm_linux_function_app_slot__auth_settings_v2__custom_oidc_v2
type azurerm_linux_function_app_slot__auth_settings_v2__facebook_v2
type azurerm_linux_function_app_slot__auth_settings_v2__github_v2
type azurerm_linux_function_app_slot__auth_settings_v2__google_v2
type azurerm_linux_function_app_slot__auth_settings_v2__login
type azurerm_linux_function_app_slot__auth_settings_v2__microsoft_v2
type azurerm_linux_function_app_slot__auth_settings_v2__twitter_v2
type azurerm_linux_function_app_slot__auth_settings_v2
type azurerm_linux_function_app_slot__backup__schedule
type azurerm_linux_function_app_slot__backup
type azurerm_linux_function_app_slot__connection_string
type azurerm_linux_function_app_slot__identity
type azurerm_linux_function_app_slot__site_config__app_service_logs

type azurerm_linux_function_app_slot__site_config__application_stack__docker

type azurerm_linux_function_app_slot__site_config__application_stack
type azurerm_linux_function_app_slot__site_config__cors

type azurerm_linux_function_app_slot__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_linux_function_app_slot__site_config__ip_restriction

type azurerm_linux_function_app_slot__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_linux_function_app_slot__site_config__scm_ip_restriction
type azurerm_linux_function_app_slot__site_config
type azurerm_linux_function_app_slot__storage_account
type azurerm_linux_function_app_slot__timeouts

type azurerm_linux_function_app_slot__site_credential = {
  name : string;  (** name *)
  password : string;  (** password *)
}
[@@deriving yojson_of]

type azurerm_linux_function_app_slot

val azurerm_linux_function_app_slot :
  ?app_settings:(string * string) list ->
  ?builtin_logging_enabled:bool ->
  ?client_certificate_enabled:bool ->
  ?client_certificate_exclusion_paths:string ->
  ?client_certificate_mode:string ->
  ?content_share_force_disabled:bool ->
  ?daily_memory_time_quota:float ->
  ?enabled:bool ->
  ?ftp_publish_basic_authentication_enabled:bool ->
  ?functions_extension_version:string ->
  ?https_only:bool ->
  ?public_network_access_enabled:bool ->
  ?service_plan_id:string ->
  ?storage_account_access_key:string ->
  ?storage_account_name:string ->
  ?storage_key_vault_secret_id:string ->
  ?storage_uses_managed_identity:bool ->
  ?tags:(string * string) list ->
  ?virtual_network_subnet_id:string ->
  ?webdeploy_publish_basic_authentication_enabled:bool ->
  ?timeouts:azurerm_linux_function_app_slot__timeouts ->
  function_app_id:string ->
  name:string ->
  auth_settings:azurerm_linux_function_app_slot__auth_settings list ->
  auth_settings_v2:
    azurerm_linux_function_app_slot__auth_settings_v2 list ->
  backup:azurerm_linux_function_app_slot__backup list ->
  connection_string:
    azurerm_linux_function_app_slot__connection_string list ->
  identity:azurerm_linux_function_app_slot__identity list ->
  site_config:azurerm_linux_function_app_slot__site_config list ->
  storage_account:
    azurerm_linux_function_app_slot__storage_account list ->
  string ->
  unit
