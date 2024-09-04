(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_studio_lifecycle_config

val aws_sagemaker_studio_lifecycle_config :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  studio_lifecycle_config_app_type:string prop ->
  studio_lifecycle_config_content:string prop ->
  studio_lifecycle_config_name:string prop ->
  unit ->
  aws_sagemaker_studio_lifecycle_config

val yojson_of_aws_sagemaker_studio_lifecycle_config :
  aws_sagemaker_studio_lifecycle_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  studio_lifecycle_config_app_type : string prop;
  studio_lifecycle_config_content : string prop;
  studio_lifecycle_config_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  studio_lifecycle_config_app_type:string prop ->
  studio_lifecycle_config_content:string prop ->
  studio_lifecycle_config_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  studio_lifecycle_config_app_type:string prop ->
  studio_lifecycle_config_content:string prop ->
  studio_lifecycle_config_name:string prop ->
  string ->
  t Tf_core.resource
