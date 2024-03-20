(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type replica

val replica : region_name:string prop -> unit -> replica

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_dynamodb_global_table

val aws_dynamodb_global_table :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  replica:replica list ->
  unit ->
  aws_dynamodb_global_table

val yojson_of_aws_dynamodb_global_table :
  aws_dynamodb_global_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  replica:replica list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  replica:replica list ->
  string ->
  t Tf_core.resource
