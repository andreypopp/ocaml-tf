(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_lb_trust_store_revocation

val aws_lb_trust_store_revocation :
  ?id:string prop ->
  ?revocations_s3_object_version:string prop ->
  ?timeouts:timeouts ->
  revocations_s3_bucket:string prop ->
  revocations_s3_key:string prop ->
  trust_store_arn:string prop ->
  unit ->
  aws_lb_trust_store_revocation

val yojson_of_aws_lb_trust_store_revocation :
  aws_lb_trust_store_revocation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  revocation_id : float prop;
  revocations_s3_bucket : string prop;
  revocations_s3_key : string prop;
  revocations_s3_object_version : string prop;
  trust_store_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?revocations_s3_object_version:string prop ->
  ?timeouts:timeouts ->
  revocations_s3_bucket:string prop ->
  revocations_s3_key:string prop ->
  trust_store_arn:string prop ->
  string ->
  t
