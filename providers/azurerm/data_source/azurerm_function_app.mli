(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_string = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_host *)
}

type site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__scm_ip_restriction__headers list;
      [@default []] [@yojson_drop_default ( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** x_forwarded_host *)
}

type site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__ip_restriction__headers list;
      [@default []] [@yojson_drop_default ( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__cors = {
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_origins *)
  support_credentials : bool prop;  (** support_credentials *)
}

type site_config = {
  always_on : bool prop;  (** always_on *)
  app_scale_limit : float prop;  (** app_scale_limit *)
  auto_swap_slot_name : string prop;  (** auto_swap_slot_name *)
  cors : site_config__cors list;
      [@default []] [@yojson_drop_default ( = )]
      (** cors *)
  dotnet_framework_version : string prop;
      (** dotnet_framework_version *)
  elastic_instance_minimum : float prop;
      (** elastic_instance_minimum *)
  ftps_state : string prop;  (** ftps_state *)
  health_check_path : string prop;  (** health_check_path *)
  http2_enabled : bool prop;  (** http2_enabled *)
  ip_restriction : site_config__ip_restriction list;
      [@default []] [@yojson_drop_default ( = )]
      (** ip_restriction *)
  java_version : string prop;  (** java_version *)
  linux_fx_version : string prop;  (** linux_fx_version *)
  min_tls_version : string prop;  (** min_tls_version *)
  pre_warmed_instance_count : float prop;
      (** pre_warmed_instance_count *)
  runtime_scale_monitoring_enabled : bool prop;
      (** runtime_scale_monitoring_enabled *)
  scm_ip_restriction : site_config__scm_ip_restriction list;
      [@default []] [@yojson_drop_default ( = )]
      (** scm_ip_restriction *)
  scm_type : string prop;  (** scm_type *)
  scm_use_main_ip_restriction : bool prop;
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker_process : bool prop;
      (** use_32_bit_worker_process *)
  vnet_route_all_enabled : bool prop;  (** vnet_route_all_enabled *)
  websockets_enabled : bool prop;  (** websockets_enabled *)
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

type azurerm_function_app

val azurerm_function_app :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_function_app

val yojson_of_azurerm_function_app : azurerm_function_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  client_cert_mode : string prop;
  connection_string : connection_string list prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  os_type : string prop;
  outbound_ip_addresses : string prop;
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
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
