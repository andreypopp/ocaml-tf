(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type code_editor_app_image_config__container_config

val code_editor_app_image_config__container_config :
  ?container_arguments:string prop list ->
  ?container_entrypoint:string prop list ->
  ?container_environment_variables:string prop Tf_core.assoc ->
  unit ->
  code_editor_app_image_config__container_config

type code_editor_app_image_config__file_system_config

val code_editor_app_image_config__file_system_config :
  ?default_gid:float prop ->
  ?default_uid:float prop ->
  ?mount_path:string prop ->
  unit ->
  code_editor_app_image_config__file_system_config

type code_editor_app_image_config

val code_editor_app_image_config :
  ?container_config:
    code_editor_app_image_config__container_config list ->
  ?file_system_config:
    code_editor_app_image_config__file_system_config list ->
  unit ->
  code_editor_app_image_config

type jupyter_lab_image_config__container_config

val jupyter_lab_image_config__container_config :
  ?container_arguments:string prop list ->
  ?container_entrypoint:string prop list ->
  ?container_environment_variables:string prop Tf_core.assoc ->
  unit ->
  jupyter_lab_image_config__container_config

type jupyter_lab_image_config__file_system_config

val jupyter_lab_image_config__file_system_config :
  ?default_gid:float prop ->
  ?default_uid:float prop ->
  ?mount_path:string prop ->
  unit ->
  jupyter_lab_image_config__file_system_config

type jupyter_lab_image_config

val jupyter_lab_image_config :
  ?container_config:jupyter_lab_image_config__container_config list ->
  ?file_system_config:
    jupyter_lab_image_config__file_system_config list ->
  unit ->
  jupyter_lab_image_config

type kernel_gateway_image_config__file_system_config

val kernel_gateway_image_config__file_system_config :
  ?default_gid:float prop ->
  ?default_uid:float prop ->
  ?mount_path:string prop ->
  unit ->
  kernel_gateway_image_config__file_system_config

type kernel_gateway_image_config__kernel_spec

val kernel_gateway_image_config__kernel_spec :
  ?display_name:string prop ->
  name:string prop ->
  unit ->
  kernel_gateway_image_config__kernel_spec

type kernel_gateway_image_config

val kernel_gateway_image_config :
  ?file_system_config:
    kernel_gateway_image_config__file_system_config list ->
  kernel_spec:kernel_gateway_image_config__kernel_spec list ->
  unit ->
  kernel_gateway_image_config

type aws_sagemaker_app_image_config

val aws_sagemaker_app_image_config :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?code_editor_app_image_config:code_editor_app_image_config list ->
  ?jupyter_lab_image_config:jupyter_lab_image_config list ->
  ?kernel_gateway_image_config:kernel_gateway_image_config list ->
  app_image_config_name:string prop ->
  unit ->
  aws_sagemaker_app_image_config

val yojson_of_aws_sagemaker_app_image_config :
  aws_sagemaker_app_image_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_image_config_name : string prop;
  arn : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?code_editor_app_image_config:code_editor_app_image_config list ->
  ?jupyter_lab_image_config:jupyter_lab_image_config list ->
  ?kernel_gateway_image_config:kernel_gateway_image_config list ->
  app_image_config_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?code_editor_app_image_config:code_editor_app_image_config list ->
  ?jupyter_lab_image_config:jupyter_lab_image_config list ->
  ?kernel_gateway_image_config:kernel_gateway_image_config list ->
  app_image_config_name:string prop ->
  string ->
  t Tf_core.resource
