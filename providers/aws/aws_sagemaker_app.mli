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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  tf_name : string;
  app_name : string prop;
  app_type : string prop;
  arn : string prop;
  domain_id : string prop;
  id : string prop;
  space_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_profile_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?space_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?user_profile_name:string prop ->
  ?resource_spec:resource_spec list ->
  app_name:string prop ->
  app_type:string prop ->
  domain_id:string prop ->
  string ->
  t Tf_core.resource
