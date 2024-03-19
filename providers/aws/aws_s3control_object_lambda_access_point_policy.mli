(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_s3control_object_lambda_access_point_policy

val aws_s3control_object_lambda_access_point_policy :
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  policy:string prop ->
  unit ->
  aws_s3control_object_lambda_access_point_policy

val yojson_of_aws_s3control_object_lambda_access_point_policy :
  aws_s3control_object_lambda_access_point_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t
