(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sku

val sku : family:string prop -> tier:string prop -> unit -> sku

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_express_route_circuit

val azurerm_express_route_circuit :
  ?allow_classic_operations:bool prop ->
  ?authorization_key:string prop ->
  ?bandwidth_in_gbps:float prop ->
  ?bandwidth_in_mbps:float prop ->
  ?express_route_port_id:string prop ->
  ?id:string prop ->
  ?peering_location:string prop ->
  ?service_provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  unit ->
  azurerm_express_route_circuit

val yojson_of_azurerm_express_route_circuit :
  azurerm_express_route_circuit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_classic_operations : bool prop;
  authorization_key : string prop;
  bandwidth_in_gbps : float prop;
  bandwidth_in_mbps : float prop;
  express_route_port_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  peering_location : string prop;
  resource_group_name : string prop;
  service_key : string prop;
  service_provider_name : string prop;
  service_provider_provisioning_state : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_classic_operations:bool prop ->
  ?authorization_key:string prop ->
  ?bandwidth_in_gbps:float prop ->
  ?bandwidth_in_mbps:float prop ->
  ?express_route_port_id:string prop ->
  ?id:string prop ->
  ?peering_location:string prop ->
  ?service_provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t

val make :
  ?allow_classic_operations:bool prop ->
  ?authorization_key:string prop ->
  ?bandwidth_in_gbps:float prop ->
  ?bandwidth_in_mbps:float prop ->
  ?express_route_port_id:string prop ->
  ?id:string prop ->
  ?peering_location:string prop ->
  ?service_provider_name:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:sku list ->
  string ->
  t Tf_core.resource
