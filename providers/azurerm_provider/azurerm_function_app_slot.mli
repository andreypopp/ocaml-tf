(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app_slot__auth_settings__active_directory
type azurerm_function_app_slot__auth_settings__facebook
type azurerm_function_app_slot__auth_settings__google
type azurerm_function_app_slot__auth_settings__microsoft
type azurerm_function_app_slot__auth_settings__twitter
type azurerm_function_app_slot__auth_settings
type azurerm_function_app_slot__connection_string
type azurerm_function_app_slot__identity
type azurerm_function_app_slot__site_config__cors

type azurerm_function_app_slot__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}

type azurerm_function_app_slot__site_config__ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_function_app_slot__site_config__ip_restriction__headers
    list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}

type azurerm_function_app_slot__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}

type azurerm_function_app_slot__site_config__scm_ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_function_app_slot__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}

type azurerm_function_app_slot__site_config
type azurerm_function_app_slot__timeouts

type azurerm_function_app_slot__site_credential = {
  password : string;  (** password *)
  username : string;  (** username *)
}

type azurerm_function_app_slot

val azurerm_function_app_slot :
  ?app_settings:(string * string) list ->
  ?daily_memory_time_quota:float ->
  ?enable_builtin_logging:bool ->
  ?enabled:bool ->
  ?https_only:bool ->
  ?id:string ->
  ?os_type:string ->
  ?tags:(string * string) list ->
  ?version:string ->
  ?timeouts:azurerm_function_app_slot__timeouts ->
  app_service_plan_id:string ->
  function_app_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  storage_account_access_key:string ->
  storage_account_name:string ->
  auth_settings:azurerm_function_app_slot__auth_settings list ->
  connection_string:azurerm_function_app_slot__connection_string list ->
  identity:azurerm_function_app_slot__identity list ->
  site_config:azurerm_function_app_slot__site_config list ->
  string ->
  unit
