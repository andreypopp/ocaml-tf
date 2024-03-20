(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lb_probe

val azurerm_lb_probe :
  ?id:string prop ->
  ?interval_in_seconds:float prop ->
  ?number_of_probes:float prop ->
  ?probe_threshold:float prop ->
  ?protocol:string prop ->
  ?request_path:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  port:float prop ->
  unit ->
  azurerm_lb_probe

val yojson_of_azurerm_lb_probe : azurerm_lb_probe -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  interval_in_seconds : float prop;
  load_balancer_rules : string list prop;
  loadbalancer_id : string prop;
  name : string prop;
  number_of_probes : float prop;
  port : float prop;
  probe_threshold : float prop;
  protocol : string prop;
  request_path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?interval_in_seconds:float prop ->
  ?number_of_probes:float prop ->
  ?probe_threshold:float prop ->
  ?protocol:string prop ->
  ?request_path:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?interval_in_seconds:float prop ->
  ?number_of_probes:float prop ->
  ?probe_threshold:float prop ->
  ?protocol:string prop ->
  ?request_path:string prop ->
  ?timeouts:timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  t Tf_core.resource
