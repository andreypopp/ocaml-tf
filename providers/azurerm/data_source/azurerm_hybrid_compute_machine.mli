(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type agent_configuration__extensions_block_list = {
  publisher : string prop;  (** publisher *)
  type_ : string prop; [@key "type"]  (** type *)
}

type agent_configuration__extensions_allow_list = {
  publisher : string prop;  (** publisher *)
  type_ : string prop; [@key "type"]  (** type *)
}

type agent_configuration = {
  extensions_allow_list :
    agent_configuration__extensions_allow_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** extensions_allow_list *)
  extensions_block_list :
    agent_configuration__extensions_block_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** extensions_block_list *)
  extensions_enabled : bool prop;  (** extensions_enabled *)
  guest_configuration_enabled : bool prop;
      (** guest_configuration_enabled *)
  incoming_connections_ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** incoming_connections_ports *)
  proxy_bypass : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** proxy_bypass *)
  proxy_url : string prop;  (** proxy_url *)
}

type cloud_metadata = { provider : string prop  (** provider *) }

type error_details__additional_info = {
  info : string prop;  (** info *)
  type_ : string prop; [@key "type"]  (** type *)
}

type error_details = {
  additional_info : error_details__additional_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_info *)
  code : string prop;  (** code *)
  message : string prop;  (** message *)
  target : string prop;  (** target *)
}

type identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type location_data = {
  city : string prop;  (** city *)
  country_or_region : string prop;  (** country_or_region *)
  district : string prop;  (** district *)
  name : string prop;  (** name *)
}

type os_profile__windows_configuration__patch_settings = {
  assessment_mode : string prop;  (** assessment_mode *)
  patch_mode : string prop;  (** patch_mode *)
}

type os_profile__windows_configuration = {
  patch_settings :
    os_profile__windows_configuration__patch_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** patch_settings *)
}

type os_profile__linux_configuration__patch_settings = {
  assessment_mode : string prop;  (** assessment_mode *)
  patch_mode : string prop;  (** patch_mode *)
}

type os_profile__linux_configuration = {
  patch_settings :
    os_profile__linux_configuration__patch_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** patch_settings *)
}

type os_profile = {
  computer_name : string prop;  (** computer_name *)
  linux_configuration : os_profile__linux_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** linux_configuration *)
  windows_configuration : os_profile__windows_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** windows_configuration *)
}

type service_status__guest_configuration_service = {
  startup_type : string prop;  (** startup_type *)
  status : string prop;  (** status *)
}

type service_status__extension_service = {
  startup_type : string prop;  (** startup_type *)
  status : string prop;  (** status *)
}

type service_status = {
  extension_service : service_status__extension_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** extension_service *)
  guest_configuration_service :
    service_status__guest_configuration_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** guest_configuration_service *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_hybrid_compute_machine

val azurerm_hybrid_compute_machine :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_hybrid_compute_machine

val yojson_of_azurerm_hybrid_compute_machine :
  azurerm_hybrid_compute_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ad_fqdn : string prop;
  agent_configuration : agent_configuration list prop;
  agent_version : string prop;
  client_public_key : string prop;
  cloud_metadata : cloud_metadata list prop;
  detected_properties : string Tf_core.assoc prop;
  display_name : string prop;
  dns_fqdn : string prop;
  domain_name : string prop;
  error_details : error_details list prop;
  id : string prop;
  identity : identity list prop;
  last_status_change : string prop;
  location : string prop;
  location_data : location_data list prop;
  machine_fqdn : string prop;
  mssql_discovered : bool prop;
  name : string prop;
  os_name : string prop;
  os_profile : os_profile list prop;
  os_sku : string prop;
  os_type : string prop;
  os_version : string prop;
  parent_cluster_resource_id : string prop;
  private_link_scope_resource_id : string prop;
  resource_group_name : string prop;
  service_status : service_status list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  vm_id : string prop;
  vm_uuid : string prop;
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
