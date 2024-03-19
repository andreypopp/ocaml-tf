(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_studio_lifecycle_config

val aws_sagemaker_studio_lifecycle_config :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  studio_lifecycle_config_app_type:string prop ->
  studio_lifecycle_config_content:string prop ->
  studio_lifecycle_config_name:string prop ->
  unit ->
  aws_sagemaker_studio_lifecycle_config

val yojson_of_aws_sagemaker_studio_lifecycle_config :
  aws_sagemaker_studio_lifecycle_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  studio_lifecycle_config_app_type : string prop;
  studio_lifecycle_config_content : string prop;
  studio_lifecycle_config_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  studio_lifecycle_config_app_type:string prop ->
  studio_lifecycle_config_content:string prop ->
  studio_lifecycle_config_name:string prop ->
  string ->
  t
