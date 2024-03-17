(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_custom_key_store__timeouts
type aws_kms_custom_key_store

val aws_kms_custom_key_store :
  ?id:string prop ->
  ?timeouts:aws_kms_custom_key_store__timeouts ->
  cloud_hsm_cluster_id:string prop ->
  custom_key_store_name:string prop ->
  key_store_password:string prop ->
  trust_anchor_certificate:string prop ->
  string ->
  unit
