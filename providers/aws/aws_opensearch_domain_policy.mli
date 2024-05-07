(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?delete:string prop -> ?update:string prop -> unit -> timeouts

type aws_opensearch_domain_policy

val aws_opensearch_domain_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policies:string prop ->
  domain_name:string prop ->
  unit ->
  aws_opensearch_domain_policy

val yojson_of_aws_opensearch_domain_policy :
  aws_opensearch_domain_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_policies : string prop;
  domain_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policies:string prop ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policies:string prop ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
