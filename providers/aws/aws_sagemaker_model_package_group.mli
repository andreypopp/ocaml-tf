(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_model_package_group

val aws_sagemaker_model_package_group :
  ?id:string prop ->
  ?model_package_group_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  model_package_group_name:string prop ->
  unit ->
  aws_sagemaker_model_package_group

val yojson_of_aws_sagemaker_model_package_group :
  aws_sagemaker_model_package_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  model_package_group_description : string prop;
  model_package_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?model_package_group_description:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  model_package_group_name:string prop ->
  string ->
  t
