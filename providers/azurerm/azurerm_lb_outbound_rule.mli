(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type frontend_ip_configuration

val frontend_ip_configuration :
  name:string prop -> unit -> frontend_ip_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lb_outbound_rule

val azurerm_lb_outbound_rule :
  ?allocated_outbound_ports:float prop ->
  ?enable_tcp_reset:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  backend_address_pool_id:string prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  frontend_ip_configuration:frontend_ip_configuration list ->
  unit ->
  azurerm_lb_outbound_rule

val yojson_of_azurerm_lb_outbound_rule :
  azurerm_lb_outbound_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allocated_outbound_ports : float prop;
  backend_address_pool_id : string prop;
  enable_tcp_reset : bool prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  loadbalancer_id : string prop;
  name : string prop;
  protocol : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allocated_outbound_ports:float prop ->
  ?enable_tcp_reset:bool prop ->
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?timeouts:timeouts ->
  backend_address_pool_id:string prop ->
  loadbalancer_id:string prop ->
  name:string prop ->
  protocol:string prop ->
  frontend_ip_configuration:frontend_ip_configuration list ->
  string ->
  t
