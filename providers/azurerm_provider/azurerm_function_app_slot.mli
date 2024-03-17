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
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_function_app_slot__site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_function_app_slot__site_config__ip_restriction__headers
    list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type azurerm_function_app_slot__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type azurerm_function_app_slot__site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_function_app_slot__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type azurerm_function_app_slot__site_config
type azurerm_function_app_slot__timeouts

type azurerm_function_app_slot__site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type azurerm_function_app_slot

type t = private {
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enable_builtin_logging : bool prop;
  enabled : bool prop;
  function_app_name : string prop;
  https_only : bool prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  os_type : string prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential :
    azurerm_function_app_slot__site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

val azurerm_function_app_slot :
  ?app_settings:(string * string prop) list ->
  ?daily_memory_time_quota:float prop ->
  ?enable_builtin_logging:bool prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?os_type:string prop ->
  ?tags:(string * string prop) list ->
  ?version:string prop ->
  ?timeouts:azurerm_function_app_slot__timeouts ->
  app_service_plan_id:string prop ->
  function_app_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_access_key:string prop ->
  storage_account_name:string prop ->
  auth_settings:azurerm_function_app_slot__auth_settings list ->
  connection_string:azurerm_function_app_slot__connection_string list ->
  identity:azurerm_function_app_slot__identity list ->
  site_config:azurerm_function_app_slot__site_config list ->
  string ->
  t
