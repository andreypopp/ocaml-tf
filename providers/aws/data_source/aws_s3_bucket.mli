(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3_bucket

val aws_s3_bucket :
  ?id:string prop -> bucket:string prop -> unit -> aws_s3_bucket

val yojson_of_aws_s3_bucket : aws_s3_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  bucket : string prop;
  bucket_domain_name : string prop;
  bucket_regional_domain_name : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  region : string prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  bucket:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  bucket:string prop ->
  string ->
  t Tf_core.resource
