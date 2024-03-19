(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?delete:string prop -> ?update:string prop -> unit -> timeouts

type aws_elasticsearch_domain_policy

val aws_elasticsearch_domain_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_policies:string prop ->
  domain_name:string prop ->
  unit ->
  aws_elasticsearch_domain_policy

val yojson_of_aws_elasticsearch_domain_policy :
  aws_elasticsearch_domain_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
