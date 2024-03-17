(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_backend_address_pool_address__timeouts

type azurerm_lb_backend_address_pool_address__inbound_nat_rule_port_mapping = {
  backend_port : float;  (** backend_port *)
  frontend_port : float;  (** frontend_port *)
  inbound_nat_rule_name : string;  (** inbound_nat_rule_name *)
}
[@@deriving yojson_of]

type azurerm_lb_backend_address_pool_address

val azurerm_lb_backend_address_pool_address :
  ?backend_address_ip_configuration_id:string ->
  ?ip_address:string ->
  ?virtual_network_id:string ->
  ?timeouts:azurerm_lb_backend_address_pool_address__timeouts ->
  backend_address_pool_id:string ->
  name:string ->
  string ->
  unit
