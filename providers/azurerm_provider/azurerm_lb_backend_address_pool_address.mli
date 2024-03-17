(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_backend_address_pool_address__timeouts

type azurerm_lb_backend_address_pool_address__inbound_nat_rule_port_mapping = {
  backend_port : float prop;  (** backend_port *)
  frontend_port : float prop;  (** frontend_port *)
  inbound_nat_rule_name : string prop;  (** inbound_nat_rule_name *)
}

type azurerm_lb_backend_address_pool_address

val azurerm_lb_backend_address_pool_address :
  ?backend_address_ip_configuration_id:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?virtual_network_id:string prop ->
  ?timeouts:azurerm_lb_backend_address_pool_address__timeouts ->
  backend_address_pool_id:string prop ->
  name:string prop ->
  string ->
  unit
