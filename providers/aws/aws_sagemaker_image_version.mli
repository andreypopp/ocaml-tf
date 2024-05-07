(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_image_version

val aws_sagemaker_image_version :
  ?id:string prop ->
  base_image:string prop ->
  image_name:string prop ->
  unit ->
  aws_sagemaker_image_version

val yojson_of_aws_sagemaker_image_version :
  aws_sagemaker_image_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  base_image : string prop;
  container_image : string prop;
  id : string prop;
  image_arn : string prop;
  image_name : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  base_image:string prop ->
  image_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  base_image:string prop ->
  image_name:string prop ->
  string ->
  t Tf_core.resource
