(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_backend_address_pool__timeouts
type azurerm_lb_backend_address_pool__tunnel_interface
type azurerm_lb_backend_address_pool

val azurerm_lb_backend_address_pool :
  ?id:string prop ->
  ?virtual_network_id:string prop ->
  ?timeouts:azurerm_lb_backend_address_pool__timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  tunnel_interface:
    azurerm_lb_backend_address_pool__tunnel_interface list ->
  string ->
  unit
