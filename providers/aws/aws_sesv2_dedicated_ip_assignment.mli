(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_sesv2_dedicated_ip_assignment

val aws_sesv2_dedicated_ip_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_pool_name:string prop ->
  ip:string prop ->
  unit ->
  aws_sesv2_dedicated_ip_assignment

val yojson_of_aws_sesv2_dedicated_ip_assignment :
  aws_sesv2_dedicated_ip_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  destination_pool_name : string prop;
  id : string prop;
  ip : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  destination_pool_name:string prop ->
  ip:string prop ->
  string ->
  t
