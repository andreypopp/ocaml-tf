(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_slot__auth_settings__active_directory
type azurerm_app_service_slot__auth_settings__facebook
type azurerm_app_service_slot__auth_settings__google
type azurerm_app_service_slot__auth_settings__microsoft
type azurerm_app_service_slot__auth_settings__twitter
type azurerm_app_service_slot__auth_settings
type azurerm_app_service_slot__connection_string
type azurerm_app_service_slot__identity

type azurerm_app_service_slot__logs__application_logs__azure_blob_storage

type azurerm_app_service_slot__logs__application_logs
type azurerm_app_service_slot__logs__http_logs__azure_blob_storage
type azurerm_app_service_slot__logs__http_logs__file_system
type azurerm_app_service_slot__logs__http_logs
type azurerm_app_service_slot__logs
type azurerm_app_service_slot__site_config__cors

type azurerm_app_service_slot__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_app_service_slot__site_config__ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_app_service_slot__site_config__ip_restriction__headers
    list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type azurerm_app_service_slot__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_app_service_slot__site_config__scm_ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_app_service_slot__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type azurerm_app_service_slot__site_config
type azurerm_app_service_slot__storage_account
type azurerm_app_service_slot__timeouts

type azurerm_app_service_slot__site_credential = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type azurerm_app_service_slot

val azurerm_app_service_slot :
  ?enabled:bool ->
  ?https_only:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_app_service_slot__timeouts ->
  app_service_name:string ->
  app_service_plan_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  auth_settings:azurerm_app_service_slot__auth_settings list ->
  connection_string:azurerm_app_service_slot__connection_string list ->
  identity:azurerm_app_service_slot__identity list ->
  logs:azurerm_app_service_slot__logs list ->
  site_config:azurerm_app_service_slot__site_config list ->
  storage_account:azurerm_app_service_slot__storage_account list ->
  string ->
  unit
