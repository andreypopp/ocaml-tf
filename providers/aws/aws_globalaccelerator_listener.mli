(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type port_range

val port_range :
  ?from_port:float prop -> ?to_port:float prop -> unit -> port_range

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_globalaccelerator_listener

val aws_globalaccelerator_listener :
  ?client_affinity:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  accelerator_arn:string prop ->
  protocol:string prop ->
  port_range:port_range list ->
  unit ->
  aws_globalaccelerator_listener

val yojson_of_aws_globalaccelerator_listener :
  aws_globalaccelerator_listener -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accelerator_arn : string prop;
  client_affinity : string prop;
  id : string prop;
  protocol : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_affinity:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  accelerator_arn:string prop ->
  protocol:string prop ->
  port_range:port_range list ->
  string ->
  t
