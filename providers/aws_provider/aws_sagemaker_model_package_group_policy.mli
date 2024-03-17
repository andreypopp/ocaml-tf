(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_model_package_group_policy

type t = private {
  id : string prop;
  model_package_group_name : string prop;
  resource_policy : string prop;
}

val aws_sagemaker_model_package_group_policy :
  ?id:string prop ->
  model_package_group_name:string prop ->
  resource_policy:string prop ->
  string ->
  t
