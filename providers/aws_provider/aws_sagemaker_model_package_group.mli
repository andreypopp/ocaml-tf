(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_model_package_group

val aws_sagemaker_model_package_group :
  ?id:string prop ->
  ?model_package_group_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  model_package_group_name:string prop ->
  string ->
  unit
