(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_vpc_endpoint_subnet_association

val aws_vpc_endpoint_subnet_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  vpc_endpoint_id:string prop ->
  unit ->
  aws_vpc_endpoint_subnet_association

val yojson_of_aws_vpc_endpoint_subnet_association :
  aws_vpc_endpoint_subnet_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  subnet_id : string prop;
  vpc_endpoint_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  subnet_id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t Tf_core.resource
