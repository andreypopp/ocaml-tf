(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_app_image_config__jupyter_lab_image_config__container_config

type aws_sagemaker_app_image_config__jupyter_lab_image_config

type aws_sagemaker_app_image_config__kernel_gateway_image_config__file_system_config

type aws_sagemaker_app_image_config__kernel_gateway_image_config__kernel_spec

type aws_sagemaker_app_image_config__kernel_gateway_image_config
type aws_sagemaker_app_image_config

val aws_sagemaker_app_image_config :
  ?tags:(string * string) list ->
  app_image_config_name:string ->
  jupyter_lab_image_config:
    aws_sagemaker_app_image_config__jupyter_lab_image_config list ->
  kernel_gateway_image_config:
    aws_sagemaker_app_image_config__kernel_gateway_image_config list ->
  string ->
  unit
