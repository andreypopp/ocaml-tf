(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_probe__timeouts
type azurerm_lb_probe

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

val azurerm_lb_probe :
  ?id:string prop ->
  ?interval_in_seconds:float prop ->
  ?number_of_probes:float prop ->
  ?probe_threshold:float prop ->
  ?protocol:string prop ->
  ?request_path:string prop ->
  ?timeouts:azurerm_lb_probe__timeouts ->
  loadbalancer_id:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  t
