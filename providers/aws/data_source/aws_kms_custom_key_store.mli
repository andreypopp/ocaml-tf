(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kms_custom_key_store

val aws_kms_custom_key_store :
  ?custom_key_store_id:string prop ->
  ?custom_key_store_name:string prop ->
  ?id:string prop ->
  unit ->
  aws_kms_custom_key_store

val yojson_of_aws_kms_custom_key_store :
  aws_kms_custom_key_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cloud_hsm_cluster_id : string prop;
  connection_state : string prop;
  creation_date : string prop;
  custom_key_store_id : string prop;
  custom_key_store_name : string prop;
  id : string prop;
  trust_anchor_certificate : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_key_store_id:string prop ->
  ?custom_key_store_name:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?custom_key_store_id:string prop ->
  ?custom_key_store_name:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
