(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lb_probe__timeouts
type azurerm_lb_probe

val azurerm_lb_probe :
  ?id:string ->
  ?interval_in_seconds:float ->
  ?number_of_probes:float ->
  ?probe_threshold:float ->
  ?protocol:string ->
  ?request_path:string ->
  ?timeouts:azurerm_lb_probe__timeouts ->
  loadbalancer_id:string ->
  name:string ->
  port:float ->
  string ->
  unit
