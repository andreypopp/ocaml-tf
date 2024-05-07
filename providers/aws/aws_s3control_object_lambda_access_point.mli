(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__transformation_configuration__content_transformation__aws_lambda

val configuration__transformation_configuration__content_transformation__aws_lambda :
  ?function_payload:string prop ->
  function_arn:string prop ->
  unit ->
  configuration__transformation_configuration__content_transformation__aws_lambda

type configuration__transformation_configuration__content_transformation

val configuration__transformation_configuration__content_transformation :
  aws_lambda:
    configuration__transformation_configuration__content_transformation__aws_lambda
    list ->
  unit ->
  configuration__transformation_configuration__content_transformation

type configuration__transformation_configuration

val configuration__transformation_configuration :
  actions:string prop list ->
  content_transformation:
    configuration__transformation_configuration__content_transformation
    list ->
  unit ->
  configuration__transformation_configuration

type configuration

val configuration :
  ?allowed_features:string prop list ->
  ?cloud_watch_metrics_enabled:bool prop ->
  supporting_access_point:string prop ->
  transformation_configuration:
    configuration__transformation_configuration list ->
  unit ->
  configuration

type aws_s3control_object_lambda_access_point

val aws_s3control_object_lambda_access_point :
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  configuration:configuration list ->
  unit ->
  aws_s3control_object_lambda_access_point

val yojson_of_aws_s3control_object_lambda_access_point :
  aws_s3control_object_lambda_access_point -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  configuration:configuration list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  name:string prop ->
  configuration:configuration list ->
  string ->
  t Tf_core.resource
