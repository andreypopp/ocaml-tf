(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_studio_lifecycle_config

val aws_sagemaker_studio_lifecycle_config :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  studio_lifecycle_config_app_type:string prop ->
  studio_lifecycle_config_content:string prop ->
  studio_lifecycle_config_name:string prop ->
  string ->
  unit
