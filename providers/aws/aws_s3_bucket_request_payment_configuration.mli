(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3_bucket_request_payment_configuration

val aws_s3_bucket_request_payment_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  payer:string prop ->
  unit ->
  aws_s3_bucket_request_payment_configuration

val yojson_of_aws_s3_bucket_request_payment_configuration :
  aws_s3_bucket_request_payment_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  payer : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  payer:string prop ->
  string ->
  t

val make :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  payer:string prop ->
  string ->
  t Tf_core.resource
