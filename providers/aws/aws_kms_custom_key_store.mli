(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_kms_custom_key_store

val aws_kms_custom_key_store :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cloud_hsm_cluster_id:string prop ->
  custom_key_store_name:string prop ->
  key_store_password:string prop ->
  trust_anchor_certificate:string prop ->
  unit ->
  aws_kms_custom_key_store

val yojson_of_aws_kms_custom_key_store :
  aws_kms_custom_key_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cloud_hsm_cluster_id : string prop;
  custom_key_store_name : string prop;
  id : string prop;
  key_store_password : string prop;
  trust_anchor_certificate : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cloud_hsm_cluster_id:string prop ->
  custom_key_store_name:string prop ->
  key_store_password:string prop ->
  trust_anchor_certificate:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cloud_hsm_cluster_id:string prop ->
  custom_key_store_name:string prop ->
  key_store_password:string prop ->
  trust_anchor_certificate:string prop ->
  string ->
  t Tf_core.resource
