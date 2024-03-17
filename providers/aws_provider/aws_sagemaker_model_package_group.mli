(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_model_package_group

val aws_sagemaker_model_package_group :
  ?id:string ->
  ?model_package_group_description:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  model_package_group_name:string ->
  string ->
  unit
