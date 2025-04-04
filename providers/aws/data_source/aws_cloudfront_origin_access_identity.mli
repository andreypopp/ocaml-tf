(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudfront_origin_access_identity

val aws_cloudfront_origin_access_identity :
  id:string prop -> unit -> aws_cloudfront_origin_access_identity

val yojson_of_aws_cloudfront_origin_access_identity :
  aws_cloudfront_origin_access_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  caller_reference : string prop;
  cloudfront_access_identity_path : string prop;
  comment : string prop;
  etag : string prop;
  iam_arn : string prop;
  id : string prop;
  s3_canonical_user_id : string prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
