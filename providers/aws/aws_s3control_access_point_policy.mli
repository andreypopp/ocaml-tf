(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_point_policy

type t = private {
  access_point_arn : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  policy : string prop;
}

val aws_s3control_access_point_policy :
  ?id:string prop ->
  access_point_arn:string prop ->
  policy:string prop ->
  string ->
  t
