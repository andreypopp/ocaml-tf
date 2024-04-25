(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource_spec

val resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  resource_spec

type aws_sagemaker_app

val aws_sagemaker_app :
  ?id:string prop ->
  ?space_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_profile_name:string prop ->
  ?resource_spec:resource_spec list ->
  app_name:string prop ->
  app_type:string prop ->
  domain_id:string prop ->
  unit ->
  aws_sagemaker_app

val yojson_of_aws_sagemaker_app : aws_sagemaker_app -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_name : string prop;
  app_type : string prop;
  arn : string prop;
  domain_id : string prop;
  id : string prop;
  space_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_profile_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?space_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_profile_name:string prop ->
  ?resource_spec:resource_spec list ->
  app_name:string prop ->
  app_type:string prop ->
  domain_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?space_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_profile_name:string prop ->
  ?resource_spec:resource_spec list ->
  app_name:string prop ->
  app_type:string prop ->
  domain_id:string prop ->
  string ->
  t Tf_core.resource
