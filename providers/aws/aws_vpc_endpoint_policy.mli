(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_vpc_endpoint_policy

val aws_vpc_endpoint_policy :
  ?id:string prop ->
  ?policy:string prop ->
  ?timeouts:timeouts ->
  vpc_endpoint_id:string prop ->
  unit ->
  aws_vpc_endpoint_policy

val yojson_of_aws_vpc_endpoint_policy :
  aws_vpc_endpoint_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy : string prop;
  vpc_endpoint_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?policy:string prop ->
  ?timeouts:timeouts ->
  vpc_endpoint_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?policy:string prop ->
  ?timeouts:timeouts ->
  vpc_endpoint_id:string prop ->
  string ->
  t Tf_core.resource
