(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type tunnel_interface

val tunnel_interface :
  identifier:float prop ->
  port:float prop ->
  protocol:string prop ->
  type_:string prop ->
  unit ->
  tunnel_interface

type azurerm_lb_backend_address_pool

val azurerm_lb_backend_address_pool :
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  tunnel_interface:tunnel_interface list ->
  unit ->
  azurerm_lb_backend_address_pool

val yojson_of_azurerm_lb_backend_address_pool :
  azurerm_lb_backend_address_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backend_ip_configurations : string list prop;
  id : string prop;
  inbound_nat_rules : string list prop;
  load_balancing_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  outbound_rules : string list prop;
  virtual_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  tunnel_interface:tunnel_interface list ->
  string ->
  t
