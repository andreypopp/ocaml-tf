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
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_linux_web_app__site_config__ip_restriction

type azurerm_linux_web_app__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_linux_web_app__site_config__scm_ip_restriction
type azurerm_linux_web_app__site_config
type azurerm_linux_web_app__sticky_settings
type azurerm_linux_web_app__storage_account
type azurerm_linux_web_app__timeouts

type azurerm_linux_web_app__site_credential = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
}

type azurerm_linux_web_app

type t = private {
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
  location : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  service_plan_id : string prop;
  site_credential : azurerm_linux_web_app__site_credential list prop;
  tags : (string * string) list prop;
  virtual_network_subnet_id : string prop;
  webdeploy_publish_basic_authentication_enabled : bool prop;
  zip_deploy_file : string prop;
}

val azurerm_linux_web_app :
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
  ?tags:(string * string prop) list ->
  ?virtual_network_subnet_id:string prop ->
  ?webdeploy_publish_basic_authentication_enabled:bool prop ->
  ?zip_deploy_file:string prop ->
  ?timeouts:azurerm_linux_web_app__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_plan_id:string prop ->
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
  t
