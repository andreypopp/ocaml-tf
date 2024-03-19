(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type inbound_nat_rule_port_mapping = {
  backend_port : float prop;  (** backend_port *)
  frontend_port : float prop;  (** frontend_port *)
  inbound_nat_rule_name : string prop;  (** inbound_nat_rule_name *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lb_backend_address_pool_address

val azurerm_lb_backend_address_pool_address :
  ?backend_address_ip_configuration_id:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?virtual_network_id:string prop ->
  ?timeouts:timeouts ->
  backend_address_pool_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_lb_backend_address_pool_address

val yojson_of_azurerm_lb_backend_address_pool_address :
  azurerm_lb_backend_address_pool_address -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backend_address_ip_configuration_id : string prop;
  backend_address_pool_id : string prop;
  id : string prop;
  inbound_nat_rule_port_mapping :
    inbound_nat_rule_port_mapping list prop;
  ip_address : string prop;
  name : string prop;
  virtual_network_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend_address_ip_configuration_id:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?virtual_network_id:string prop ->
  ?timeouts:timeouts ->
  backend_address_pool_id:string prop ->
  name:string prop ->
  string ->
  t
