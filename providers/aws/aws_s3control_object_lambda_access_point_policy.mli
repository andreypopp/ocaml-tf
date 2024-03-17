(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_object_lambda_access_point_policy

type t = private {
  account_id : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

val aws_s3control_object_lambda_access_point_policy :
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t
