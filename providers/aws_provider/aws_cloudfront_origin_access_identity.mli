(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_origin_access_identity

type t = private {
  caller_reference : string prop;
  cloudfront_access_identity_path : string prop;
  comment : string prop;
  etag : string prop;
  iam_arn : string prop;
  id : string prop;
  s3_canonical_user_id : string prop;
}

val aws_cloudfront_origin_access_identity :
  ?comment:string prop -> ?id:string prop -> string -> t
