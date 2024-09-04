(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_integration_service_environment

val azurerm_integration_service_environment :
  ?id:string prop ->
  ?sku_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  access_endpoint_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_subnet_ids:string prop list ->
  unit ->
  azurerm_integration_service_environment

val yojson_of_azurerm_integration_service_environment :
  azurerm_integration_service_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_endpoint_type : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  virtual_network_subnet_ids : string list prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?sku_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  access_endpoint_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_subnet_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?sku_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  access_endpoint_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_network_subnet_ids:string prop list ->
  string ->
  t Tf_core.resource
