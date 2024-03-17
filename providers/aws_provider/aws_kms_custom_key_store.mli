(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kms_custom_key_store__timeouts
type aws_kms_custom_key_store

val aws_kms_custom_key_store :
  ?id:string ->
  ?timeouts:aws_kms_custom_key_store__timeouts ->
  cloud_hsm_cluster_id:string ->
  custom_key_store_name:string ->
  key_store_password:string ->
  trust_anchor_certificate:string ->
  string ->
  unit
