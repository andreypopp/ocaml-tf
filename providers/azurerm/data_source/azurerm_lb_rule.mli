(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_lb_rule

val azurerm_lb_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_lb_rule

val yojson_of_azurerm_lb_rule : azurerm_lb_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend_address_pool_id : string prop;
  backend_port : float prop;
  disable_outbound_snat : bool prop;
  enable_floating_ip : bool prop;
  enable_tcp_reset : bool prop;
  frontend_ip_configuration_name : string prop;
  frontend_port : float prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  load_distribution : string prop;
  loadbalancer_id : string prop;
  name : string prop;
  probe_id : string prop;
  protocol : string prop;
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
