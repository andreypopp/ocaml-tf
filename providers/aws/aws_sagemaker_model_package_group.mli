(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_model_package_group

val aws_sagemaker_model_package_group :
  ?id:string prop ->
  ?model_package_group_description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  model_package_group_name:string prop ->
  unit ->
  aws_sagemaker_model_package_group

val yojson_of_aws_sagemaker_model_package_group :
  aws_sagemaker_model_package_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  model_package_group_description : string prop;
  model_package_group_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?model_package_group_description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  model_package_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?model_package_group_description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  model_package_group_name:string prop ->
  string ->
  t Tf_core.resource
