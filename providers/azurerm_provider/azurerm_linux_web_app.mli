(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_linux_web_app__auth_settings__active_directory
type azurerm_linux_web_app__auth_settings__facebook
type azurerm_linux_web_app__auth_settings__github
type azurerm_linux_web_app__auth_settings__google
type azurerm_linux_web_app__auth_settings__microsoft
type azurerm_linux_web_app__auth_settings__twitter
type azurerm_linux_web_app__auth_settings
type azurerm_linux_web_app__auth_settings_v2__active_directory_v2
type azurerm_linux_web_app__auth_settings_v2__apple_v2
type azurerm_linux_web_app__auth_settings_v2__azure_static_web_app_v2
type azurerm_linux_web_app__auth_settings_v2__custom_oidc_v2
type azurerm_linux_web_app__auth_settings_v2__facebook_v2
type azurerm_linux_web_app__auth_settings_v2__github_v2
type azurerm_linux_web_app__auth_settings_v2__google_v2
type azurerm_linux_web_app__auth_settings_v2__login
type azurerm_linux_web_app__auth_settings_v2__microsoft_v2
type azurerm_linux_web_app__auth_settings_v2__twitter_v2
type azurerm_linux_web_app__auth_settings_v2
type azurerm_linux_web_app__backup__schedule
type azurerm_linux_web_app__backup
type azurerm_linux_web_app__connection_string
type azurerm_linux_web_app__identity
type azurerm_linux_web_app__logs__application_logs__azure_blob_storage
type azurerm_linux_web_app__logs__application_logs
type azurerm_linux_web_app__logs__http_logs__azure_blob_storage
type azurerm_linux_web_app__logs__http_logs__file_system
type azurerm_linux_web_app__logs__http_logs
type azurerm_linux_web_app__logs
type azurerm_linux_web_app__site_config__application_stack
type azurerm_linux_web_app__site_config__auto_heal_setting__action

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger__requests

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger__slow_request

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger__status_code

type azurerm_linux_web_app__site_config__auto_heal_setting__trigger
type azurerm_linux_web_app__site_config__auto_heal_setting
type azurerm_linux_web_app__site_config__cors

type azurerm_linux_web_app__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_linux_web_app__site_config__ip_restriction

type azurerm_linux_web_app__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_linux_web_app__site_config__scm_ip_restriction
type azurerm_linux_web_app__site_config
type azurerm_linux_web_app__sticky_settings
type azurerm_linux_web_app__storage_account
type azurerm_linux_web_app__timeouts

type azurerm_linux_web_app__site_credential = {
  name : string;  (** name *)
  password : string;  (** password *)
}
[@@deriving yojson_of]

type azurerm_linux_web_app

val azurerm_linux_web_app :
  ?app_settings:(string * string) list ->
  ?client_affinity_enabled:bool ->
  ?client_certificate_enabled:bool ->
  ?client_certificate_exclusion_paths:string ->
  ?client_certificate_mode:string ->
  ?enabled:bool ->
  ?ftp_publish_basic_authentication_enabled:bool ->
  ?https_only:bool ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?virtual_network_subnet_id:string ->
  ?webdeploy_publish_basic_authentication_enabled:bool ->
  ?timeouts:azurerm_linux_web_app__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  service_plan_id:string ->
  auth_settings:azurerm_linux_web_app__auth_settings list ->
  auth_settings_v2:azurerm_linux_web_app__auth_settings_v2 list ->
  backup:azurerm_linux_web_app__backup list ->
  connection_string:azurerm_linux_web_app__connection_string list ->
  identity:azurerm_linux_web_app__identity list ->
  logs:azurerm_linux_web_app__logs list ->
  site_config:azurerm_linux_web_app__site_config list ->
  sticky_settings:azurerm_linux_web_app__sticky_settings list ->
  storage_account:azurerm_linux_web_app__storage_account list ->
  string ->
  unit
