(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_backend_address_pool__timeouts
type azurerm_lb_backend_address_pool__tunnel_interface
type azurerm_lb_backend_address_pool

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

val azurerm_lb_backend_address_pool :
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  ?timeouts:azurerm_lb_backend_address_pool__timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  tunnel_interface:
    azurerm_lb_backend_address_pool__tunnel_interface list ->
  string ->
  t
