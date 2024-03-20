(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_string = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__scm_ip_restriction__headers list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

type site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__ip_restriction__headers list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__cors = {
  allowed_origins : string prop list;  (** allowed_origins *)
  support_credentials : bool prop;  (** support_credentials *)
}

type site_config = {
  acr_use_managed_identity_credentials : bool prop;
      (** acr_use_managed_identity_credentials *)
  acr_user_managed_identity_client_id : string prop;
      (** acr_user_managed_identity_client_id *)
  always_on : bool prop;  (** always_on *)
  app_command_line : string prop;  (** app_command_line *)
  cors : site_config__cors list;  (** cors *)
  default_documents : string prop list;  (** default_documents *)
  dotnet_framework_version : string prop;
      (** dotnet_framework_version *)
  ftps_state : string prop;  (** ftps_state *)
  health_check_path : string prop;  (** health_check_path *)
  http2_enabled : bool prop;  (** http2_enabled *)
  ip_restriction : site_config__ip_restriction list;
      (** ip_restriction *)
  java_container : string prop;  (** java_container *)
  java_container_version : string prop;
      (** java_container_version *)
  java_version : string prop;  (** java_version *)
  linux_fx_version : string prop;  (** linux_fx_version *)
  local_mysql_enabled : bool prop;  (** local_mysql_enabled *)
  managed_pipeline_mode : string prop;  (** managed_pipeline_mode *)
  min_tls_version : string prop;  (** min_tls_version *)
  number_of_workers : float prop;  (** number_of_workers *)
  php_version : string prop;  (** php_version *)
  python_version : string prop;  (** python_version *)
  remote_debugging_enabled : bool prop;
      (** remote_debugging_enabled *)
  remote_debugging_version : string prop;
      (** remote_debugging_version *)
  scm_ip_restriction : site_config__scm_ip_restriction list;
      (** scm_ip_restriction *)
  scm_type : string prop;  (** scm_type *)
  scm_use_main_ip_restriction : bool prop;
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker_process : bool prop;
      (** use_32_bit_worker_process *)
  vnet_route_all_enabled : bool prop;  (** vnet_route_all_enabled *)
  websockets_enabled : bool prop;  (** websockets_enabled *)
  windows_fx_version : string prop;  (** windows_fx_version *)
}

type site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type source_control = {
  branch : string prop;  (** branch *)
  manual_integration : bool prop;  (** manual_integration *)
  repo_url : string prop;  (** repo_url *)
  rollback_enabled : bool prop;  (** rollback_enabled *)
  use_mercurial : bool prop;  (** use_mercurial *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_service

val azurerm_app_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service

val yojson_of_azurerm_app_service : azurerm_app_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  client_affinity_enabled : bool prop;
  client_cert_enabled : bool prop;
  connection_string : connection_string list prop;
  custom_domain_verification_id : string prop;
  default_site_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_address_list : string list prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_address_list : string list prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_config : site_config list prop;
  site_credential : site_credential list prop;
  source_control : source_control list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
