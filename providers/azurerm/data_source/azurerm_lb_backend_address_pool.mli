(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backend_address__inbound_nat_rule_port_mapping = {
  backend_port : float prop;  (** backend_port *)
  frontend_port : float prop;  (** frontend_port *)
  inbound_nat_rule_name : string prop;  (** inbound_nat_rule_name *)
}

type backend_address = {
  inbound_nat_rule_port_mapping :
    backend_address__inbound_nat_rule_port_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** inbound_nat_rule_port_mapping *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  virtual_network_id : string prop;  (** virtual_network_id *)
}

type backend_ip_configurations = { id : string prop  (** id *) }
type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_lb_backend_address_pool

val azurerm_lb_backend_address_pool :
  ?id:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_lb_backend_address_pool

val yojson_of_azurerm_lb_backend_address_pool :
  azurerm_lb_backend_address_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend_address : backend_address list prop;
  backend_ip_configurations : backend_ip_configurations list prop;
  id : string prop;
  inbound_nat_rules : string list prop;
  load_balancing_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  outbound_rules : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
