(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_request_payment_configuration

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  payer : string prop;
}

val aws_s3_bucket_request_payment_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  payer:string prop ->
  string ->
  t
