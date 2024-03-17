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
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_app_service__site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_app_service__site_config__ip_restriction__headers list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type azurerm_app_service__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_app_service__site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_app_service__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type azurerm_app_service__site_config
type azurerm_app_service__source_control
type azurerm_app_service__storage_account
type azurerm_app_service__timeouts

type azurerm_app_service__site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type azurerm_app_service

val azurerm_app_service :
  ?app_settings:(string * string prop) list ->
  ?client_affinity_enabled:bool prop ->
  ?client_cert_enabled:bool prop ->
  ?client_cert_mode:string prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_app_service__timeouts ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
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
