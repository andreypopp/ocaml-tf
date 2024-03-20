(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_model_package_group_policy

val aws_sagemaker_model_package_group_policy :
  ?id:string prop ->
  model_package_group_name:string prop ->
  resource_policy:string prop ->
  unit ->
  aws_sagemaker_model_package_group_policy

val yojson_of_aws_sagemaker_model_package_group_policy :
  aws_sagemaker_model_package_group_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  model_package_group_name : string prop;
  resource_policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  model_package_group_name:string prop ->
  resource_policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  model_package_group_name:string prop ->
  resource_policy:string prop ->
  string ->
  t Tf_core.resource
