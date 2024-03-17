(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_trust_store_revocation__timeouts
type aws_lb_trust_store_revocation

val aws_lb_trust_store_revocation :
  ?id:string ->
  ?revocations_s3_object_version:string ->
  ?timeouts:aws_lb_trust_store_revocation__timeouts ->
  revocations_s3_bucket:string ->
  revocations_s3_key:string ->
  trust_store_arn:string ->
  string ->
  unit
