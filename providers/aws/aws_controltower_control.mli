(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameters

val parameters :
  key:string prop -> value:string prop -> unit -> parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_controltower_control

val aws_controltower_control :
  ?id:string prop ->
  ?timeouts:timeouts ->
  control_identifier:string prop ->
  target_identifier:string prop ->
  parameters:parameters list ->
  unit ->
  aws_controltower_control

val yojson_of_aws_controltower_control :
  aws_controltower_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
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
  parameters:parameters list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  control_identifier:string prop ->
  target_identifier:string prop ->
  parameters:parameters list ->
  string ->
  t Tf_core.resource
