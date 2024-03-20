(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_dx_gateway

val aws_dx_gateway :
  ?id:string prop ->
  ?timeouts:timeouts ->
  amazon_side_asn:string prop ->
  name:string prop ->
  unit ->
  aws_dx_gateway

val yojson_of_aws_dx_gateway : aws_dx_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  amazon_side_asn : string prop;
  id : string prop;
  name : string prop;
  owner_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  amazon_side_asn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  amazon_side_asn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
