(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
