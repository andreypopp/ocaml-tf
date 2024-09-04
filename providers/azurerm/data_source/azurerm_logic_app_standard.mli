(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_string = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_host *)
}

type site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_azure_fdid *)
  x_fd_health_probe : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_fd_health_probe *)
  x_forwarded_for : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_for *)
  x_forwarded_host : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** x_forwarded_host *)
}

type site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__scm_ip_restriction__headers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}

type site_config__cors

val site_config__cors :
  ?support_credentials:bool prop ->
  allowed_origins:string prop list ->
  unit ->
  site_config__cors

type site_config

val site_config :
  ?always_on:bool prop ->
  ?app_scale_limit:float prop ->
  ?dotnet_framework_version:string prop ->
  ?elastic_instance_minimum:float prop ->
  ?ftps_state:string prop ->
  ?health_check_path:string prop ->
  ?http2_enabled:bool prop ->
  ?ip_restriction:site_config__ip_restriction list ->
  ?linux_fx_version:string prop ->
  ?min_tls_version:string prop ->
  ?pre_warmed_instance_count:float prop ->
  ?public_network_access_enabled:bool prop ->
  ?runtime_scale_monitoring_enabled:bool prop ->
  ?scm_ip_restriction:site_config__scm_ip_restriction list ->
  ?scm_min_tls_version:string prop ->
  ?scm_type:string prop ->
  ?scm_use_main_ip_restriction:bool prop ->
  ?use_32_bit_worker_process:bool prop ->
  ?vnet_route_all_enabled:bool prop ->
  ?websockets_enabled:bool prop ->
  ?cors:site_config__cors list ->
  unit ->
  site_config

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_logic_app_standard

val azurerm_logic_app_standard :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?site_config:site_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_logic_app_standard

val yojson_of_azurerm_logic_app_standard :
  azurerm_logic_app_standard -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_plan_id : string prop;
  app_settings : string Tf_core.assoc prop;
  bundle_version : string prop;
  client_affinity_enabled : bool prop;
  client_certificate_mode : string prop;
  connection_string : connection_string list prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  identity : identity list prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_account_share_name : string prop;
  tags : string Tf_core.assoc prop;
  use_extension_bundle : bool prop;
  version : string prop;
  virtual_network_subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?site_config:site_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?site_config:site_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
