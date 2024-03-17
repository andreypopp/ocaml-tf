(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_accelerate_configuration

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  status : string prop;
}

val aws_s3_bucket_accelerate_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  status:string prop ->
  string ->
  t
