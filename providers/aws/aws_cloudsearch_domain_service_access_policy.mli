(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?delete:string prop -> ?update:string prop -> unit -> timeouts

type aws_cloudsearch_domain_service_access_policy

val aws_cloudsearch_domain_service_access_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policy:string prop ->
  domain_name:string prop ->
  unit ->
  aws_cloudsearch_domain_service_access_policy

val yojson_of_aws_cloudsearch_domain_service_access_policy :
  aws_cloudsearch_domain_service_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_policy : string prop;
  domain_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policy:string prop ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policy:string prop ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
