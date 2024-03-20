(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type frontend_ip_configuration = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_lb_outbound_rule

val azurerm_lb_outbound_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_lb_outbound_rule

val yojson_of_azurerm_lb_outbound_rule :
  azurerm_lb_outbound_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allocated_outbound_ports : float prop;
  backend_address_pool_id : string prop;
  frontend_ip_configuration : frontend_ip_configuration list prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
  tcp_reset_enabled : bool prop;
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
