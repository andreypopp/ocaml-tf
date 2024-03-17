(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface_application_gateway_backend_address_pool_association__timeouts

type azurerm_network_interface_application_gateway_backend_address_pool_association

val azurerm_network_interface_application_gateway_backend_address_pool_association :
  ?timeouts:
    azurerm_network_interface_application_gateway_backend_address_pool_association__timeouts ->
  backend_address_pool_id:string ->
  ip_configuration_name:string ->
  network_interface_id:string ->
  string ->
  unit
