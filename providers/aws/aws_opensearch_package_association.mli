(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_opensearch_package_association

val aws_opensearch_package_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  package_id:string prop ->
  unit ->
  aws_opensearch_package_association

val yojson_of_aws_opensearch_package_association :
  aws_opensearch_package_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
  package_id : string prop;
  reference_path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  package_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  package_id:string prop ->
  string ->
  t Tf_core.resource
