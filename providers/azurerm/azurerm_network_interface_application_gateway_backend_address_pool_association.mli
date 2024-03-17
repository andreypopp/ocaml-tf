(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface_application_gateway_backend_address_pool_association__timeouts

type azurerm_network_interface_application_gateway_backend_address_pool_association

type t = private {
  backend_address_pool_id : string prop;
  id : string prop;
  ip_configuration_name : string prop;
  network_interface_id : string prop;
}

val azurerm_network_interface_application_gateway_backend_address_pool_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_network_interface_application_gateway_backend_address_pool_association__timeouts ->
  backend_address_pool_id:string prop ->
  ip_configuration_name:string prop ->
  network_interface_id:string prop ->
  string ->
  t
