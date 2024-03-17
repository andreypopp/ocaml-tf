(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_app_image_config__jupyter_lab_image_config__container_config

type aws_sagemaker_app_image_config__jupyter_lab_image_config

type aws_sagemaker_app_image_config__kernel_gateway_image_config__file_system_config

type aws_sagemaker_app_image_config__kernel_gateway_image_config__kernel_spec

type aws_sagemaker_app_image_config__kernel_gateway_image_config
type aws_sagemaker_app_image_config

type t = private {
  app_image_config_name : string prop;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sagemaker_app_image_config :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  app_image_config_name:string prop ->
  jupyter_lab_image_config:
    aws_sagemaker_app_image_config__jupyter_lab_image_config list ->
  kernel_gateway_image_config:
    aws_sagemaker_app_image_config__kernel_gateway_image_config list ->
  string ->
  t
