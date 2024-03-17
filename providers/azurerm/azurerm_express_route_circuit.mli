(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit__sku
type azurerm_express_route_circuit__timeouts
type azurerm_express_route_circuit

type t = private {
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
  ?timeouts:azurerm_express_route_circuit__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:azurerm_express_route_circuit__sku list ->
  string ->
  t
