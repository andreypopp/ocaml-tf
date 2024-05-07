(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_prebuilt_ecr_image

val aws_sagemaker_prebuilt_ecr_image :
  ?dns_suffix:string prop ->
  ?id:string prop ->
  ?image_tag:string prop ->
  ?region:string prop ->
  repository_name:string prop ->
  unit ->
  aws_sagemaker_prebuilt_ecr_image

val yojson_of_aws_sagemaker_prebuilt_ecr_image :
  aws_sagemaker_prebuilt_ecr_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_suffix : string prop;
  id : string prop;
  image_tag : string prop;
  region : string prop;
  registry_id : string prop;
  registry_path : string prop;
  repository_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?dns_suffix:string prop ->
  ?id:string prop ->
  ?image_tag:string prop ->
  ?region:string prop ->
  repository_name:string prop ->
  string ->
  t

val make :
  ?dns_suffix:string prop ->
  ?id:string prop ->
  ?image_tag:string prop ->
  ?region:string prop ->
  repository_name:string prop ->
  string ->
  t Tf_core.resource
