(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_backend_address_pool__timeouts
type azurerm_lb_backend_address_pool__tunnel_interface
type azurerm_lb_backend_address_pool

val azurerm_lb_backend_address_pool :
  ?virtual_network_id:string ->
  ?timeouts:azurerm_lb_backend_address_pool__timeouts ->
  loadbalancer_id:string ->
  name:string ->
  tunnel_interface:
    azurerm_lb_backend_address_pool__tunnel_interface list ->
  string ->
  unit
