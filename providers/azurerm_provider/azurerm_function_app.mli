(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_function_app__auth_settings__active_directory
type azurerm_function_app__auth_settings__facebook
type azurerm_function_app__auth_settings__google
type azurerm_function_app__auth_settings__microsoft
type azurerm_function_app__auth_settings__twitter
type azurerm_function_app__auth_settings
type azurerm_function_app__connection_string
type azurerm_function_app__identity
type azurerm_function_app__site_config__cors

type azurerm_function_app__site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_function_app__site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_function_app__site_config__ip_restriction__headers list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type azurerm_function_app__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_function_app__site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_function_app__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type azurerm_function_app__site_config
type azurerm_function_app__source_control
type azurerm_function_app__timeouts

type azurerm_function_app__site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type azurerm_function_app

val azurerm_function_app :
  ?app_settings:(string * string prop) list ->
  ?client_cert_mode:string prop ->
  ?daily_memory_time_quota:float prop ->
  ?enable_builtin_logging:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?key_vault_reference_identity_id:string prop ->
  ?os_type:string prop ->
  ?tags:(string * string prop) list ->
  ?version:string prop ->
  ?timeouts:azurerm_function_app__timeouts ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_access_key:string prop ->
  storage_account_name:string prop ->
  auth_settings:azurerm_function_app__auth_settings list ->
  connection_string:azurerm_function_app__connection_string list ->
  identity:azurerm_function_app__identity list ->
  site_config:azurerm_function_app__site_config list ->
  source_control:azurerm_function_app__source_control list ->
  string ->
  unit
