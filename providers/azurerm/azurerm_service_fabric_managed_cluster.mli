(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication__active_directory

val authentication__active_directory :
  client_application_id:string prop ->
  cluster_application_id:string prop ->
  tenant_id:string prop ->
  unit ->
  authentication__active_directory

type authentication__certificate

val authentication__certificate :
  ?common_name:string prop ->
  thumbprint:string prop ->
  type_:string prop ->
  unit ->
  authentication__certificate

type authentication

val authentication :
  ?active_directory:authentication__active_directory list ->
  ?certificate:authentication__certificate list ->
  unit ->
  authentication

type custom_fabric_setting

val custom_fabric_setting :
  parameter:string prop ->
  section:string prop ->
  value:string prop ->
  unit ->
  custom_fabric_setting

type lb_rule

val lb_rule :
  ?probe_request_path:string prop ->
  backend_port:float prop ->
  frontend_port:float prop ->
  probe_protocol:string prop ->
  protocol:string prop ->
  unit ->
  lb_rule

type node_type__vm_secrets__certificates

val node_type__vm_secrets__certificates :
  store:string prop ->
  url:string prop ->
  unit ->
  node_type__vm_secrets__certificates

type node_type__vm_secrets

val node_type__vm_secrets :
  vault_id:string prop ->
  certificates:node_type__vm_secrets__certificates list ->
  unit ->
  node_type__vm_secrets

type node_type

val node_type :
  ?capacities:string prop Tf_core.assoc ->
  ?data_disk_type:string prop ->
  ?multiple_placement_groups_enabled:bool prop ->
  ?placement_properties:string prop Tf_core.assoc ->
  ?primary:bool prop ->
  ?stateless:bool prop ->
  ?vm_secrets:node_type__vm_secrets list ->
  application_port_range:string prop ->
  data_disk_size_gb:float prop ->
  ephemeral_port_range:string prop ->
  name:string prop ->
  vm_image_offer:string prop ->
  vm_image_publisher:string prop ->
  vm_image_sku:string prop ->
  vm_image_version:string prop ->
  vm_instance_count:float prop ->
  vm_size:string prop ->
  unit ->
  node_type

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_service_fabric_managed_cluster

val azurerm_service_fabric_managed_cluster :
  ?backup_service_enabled:bool prop ->
  ?dns_name:string prop ->
  ?dns_service_enabled:bool prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?sku:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?upgrade_wave:string prop ->
  ?username:string prop ->
  ?authentication:authentication list ->
  ?custom_fabric_setting:custom_fabric_setting list ->
  ?node_type:node_type list ->
  ?timeouts:timeouts ->
  client_connection_port:float prop ->
  http_gateway_port:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  lb_rule:lb_rule list ->
  unit ->
  azurerm_service_fabric_managed_cluster

val yojson_of_azurerm_service_fabric_managed_cluster :
  azurerm_service_fabric_managed_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_service_enabled : bool prop;
  client_connection_port : float prop;
  dns_name : string prop;
  dns_service_enabled : bool prop;
  http_gateway_port : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
  upgrade_wave : string prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backup_service_enabled:bool prop ->
  ?dns_name:string prop ->
  ?dns_service_enabled:bool prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?sku:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?upgrade_wave:string prop ->
  ?username:string prop ->
  ?authentication:authentication list ->
  ?custom_fabric_setting:custom_fabric_setting list ->
  ?node_type:node_type list ->
  ?timeouts:timeouts ->
  client_connection_port:float prop ->
  http_gateway_port:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  lb_rule:lb_rule list ->
  string ->
  t

val make :
  ?backup_service_enabled:bool prop ->
  ?dns_name:string prop ->
  ?dns_service_enabled:bool prop ->
  ?id:string prop ->
  ?password:string prop ->
  ?sku:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?upgrade_wave:string prop ->
  ?username:string prop ->
  ?authentication:authentication list ->
  ?custom_fabric_setting:custom_fabric_setting list ->
  ?node_type:node_type list ->
  ?timeouts:timeouts ->
  client_connection_port:float prop ->
  http_gateway_port:float prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  lb_rule:lb_rule list ->
  string ->
  t Tf_core.resource
