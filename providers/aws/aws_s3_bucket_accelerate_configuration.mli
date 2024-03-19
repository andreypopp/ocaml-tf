(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_s3_bucket_accelerate_configuration

val aws_s3_bucket_accelerate_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  status:string prop ->
  unit ->
  aws_s3_bucket_accelerate_configuration

val yojson_of_aws_s3_bucket_accelerate_configuration :
  aws_s3_bucket_accelerate_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  status:string prop ->
  string ->
  t
