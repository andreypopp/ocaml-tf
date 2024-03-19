(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_controltower_control

val aws_controltower_control :
  ?id:string prop ->
  ?timeouts:timeouts ->
  control_identifier:string prop ->
  target_identifier:string prop ->
  unit ->
  aws_controltower_control

val yojson_of_aws_controltower_control :
  aws_controltower_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  control_identifier : string prop;
  id : string prop;
  target_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  control_identifier:string prop ->
  target_identifier:string prop ->
  string ->
  t
