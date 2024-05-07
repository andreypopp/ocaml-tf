(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appsync_domain_name_api_association

val aws_appsync_domain_name_api_association :
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  unit ->
  aws_appsync_domain_name_api_association

val yojson_of_aws_appsync_domain_name_api_association :
  aws_appsync_domain_name_api_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  domain_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  api_id:string prop ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
