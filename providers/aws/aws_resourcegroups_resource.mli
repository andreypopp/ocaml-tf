(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_resourcegroups_resource

val aws_resourcegroups_resource :
  ?id:string prop ->
  ?timeouts:timeouts ->
  group_arn:string prop ->
  resource_arn:string prop ->
  unit ->
  aws_resourcegroups_resource

val yojson_of_aws_resourcegroups_resource :
  aws_resourcegroups_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  group_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  group_arn:string prop ->
  resource_arn:string prop ->
  string ->
  t Tf_core.resource
