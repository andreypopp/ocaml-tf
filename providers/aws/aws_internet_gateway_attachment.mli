(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_internet_gateway_attachment

val aws_internet_gateway_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  internet_gateway_id:string prop ->
  vpc_id:string prop ->
  unit ->
  aws_internet_gateway_attachment

val yojson_of_aws_internet_gateway_attachment :
  aws_internet_gateway_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  internet_gateway_id : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  internet_gateway_id:string prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  internet_gateway_id:string prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
