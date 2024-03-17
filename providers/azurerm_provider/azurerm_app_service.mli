(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service__auth_settings__active_directory
type azurerm_app_service__auth_settings__facebook
type azurerm_app_service__auth_settings__google
type azurerm_app_service__auth_settings__microsoft
type azurerm_app_service__auth_settings__twitter
type azurerm_app_service__auth_settings
type azurerm_app_service__backup__schedule
type azurerm_app_service__backup
type azurerm_app_service__connection_string
type azurerm_app_service__identity
type azurerm_app_service__logs__application_logs__azure_blob_storage
type azurerm_app_service__logs__application_logs
type azurerm_app_service__logs__http_logs__azure_blob_storage
type azurerm_app_service__logs__http_logs__file_system
type azurerm_app_service__logs__http_logs
type azurerm_app_service__logs
type azurerm_app_service__site_config__cors

type azurerm_app_service__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}

type azurerm_app_service__site_config__ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_app_service__site_config__ip_restriction__headers list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}

type azurerm_app_service__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}

type azurerm_app_service__site_config__scm_ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_app_service__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}

type azurerm_app_service__site_config
type azurerm_app_service__source_control
type azurerm_app_service__storage_account
type azurerm_app_service__timeouts

type azurerm_app_service__site_credential = {
  password : string;  (** password *)
  username : string;  (** username *)
}

type azurerm_app_service

val azurerm_app_service :
  ?app_settings:(string * string) list ->
  ?client_affinity_enabled:bool ->
  ?client_cert_enabled:bool ->
  ?client_cert_mode:string ->
  ?enabled:bool ->
  ?https_only:bool ->
  ?id:string ->
  ?key_vault_reference_identity_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_app_service__timeouts ->
  app_service_plan_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  auth_settings:azurerm_app_service__auth_settings list ->
  backup:azurerm_app_service__backup list ->
  connection_string:azurerm_app_service__connection_string list ->
  identity:azurerm_app_service__identity list ->
  logs:azurerm_app_service__logs list ->
  site_config:azurerm_app_service__site_config list ->
  source_control:azurerm_app_service__source_control list ->
  storage_account:azurerm_app_service__storage_account list ->
  string ->
  unit
