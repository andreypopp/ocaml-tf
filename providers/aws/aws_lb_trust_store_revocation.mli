(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lb_trust_store_revocation__timeouts
type aws_lb_trust_store_revocation

type t = private {
  id : string prop;
  revocation_id : float prop;
  revocations_s3_bucket : string prop;
  revocations_s3_key : string prop;
  revocations_s3_object_version : string prop;
  trust_store_arn : string prop;
}

val aws_lb_trust_store_revocation :
  ?id:string prop ->
  ?revocations_s3_object_version:string prop ->
  ?timeouts:aws_lb_trust_store_revocation__timeouts ->
  revocations_s3_bucket:string prop ->
  revocations_s3_key:string prop ->
  trust_store_arn:string prop ->
  string ->
  t
