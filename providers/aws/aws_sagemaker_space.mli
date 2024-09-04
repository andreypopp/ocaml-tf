(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ownership_settings

val ownership_settings :
  owner_user_profile_name:string prop -> unit -> ownership_settings

type space_settings__code_editor_app_settings__default_resource_spec

val space_settings__code_editor_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  space_settings__code_editor_app_settings__default_resource_spec

type space_settings__code_editor_app_settings

val space_settings__code_editor_app_settings :
  default_resource_spec:
    space_settings__code_editor_app_settings__default_resource_spec
    list ->
  unit ->
  space_settings__code_editor_app_settings

type space_settings__custom_file_system__efs_file_system

val space_settings__custom_file_system__efs_file_system :
  file_system_id:string prop ->
  unit ->
  space_settings__custom_file_system__efs_file_system

type space_settings__custom_file_system

val space_settings__custom_file_system :
  efs_file_system:
    space_settings__custom_file_system__efs_file_system list ->
  unit ->
  space_settings__custom_file_system

type space_settings__jupyter_lab_app_settings__code_repository

val space_settings__jupyter_lab_app_settings__code_repository :
  repository_url:string prop ->
  unit ->
  space_settings__jupyter_lab_app_settings__code_repository

type space_settings__jupyter_lab_app_settings__default_resource_spec

val space_settings__jupyter_lab_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  space_settings__jupyter_lab_app_settings__default_resource_spec

type space_settings__jupyter_lab_app_settings

val space_settings__jupyter_lab_app_settings :
  code_repository:
    space_settings__jupyter_lab_app_settings__code_repository list ->
  default_resource_spec:
    space_settings__jupyter_lab_app_settings__default_resource_spec
    list ->
  unit ->
  space_settings__jupyter_lab_app_settings

type space_settings__jupyter_server_app_settings__code_repository

val space_settings__jupyter_server_app_settings__code_repository :
  repository_url:string prop ->
  unit ->
  space_settings__jupyter_server_app_settings__code_repository

type space_settings__jupyter_server_app_settings__default_resource_spec

val space_settings__jupyter_server_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  space_settings__jupyter_server_app_settings__default_resource_spec

type space_settings__jupyter_server_app_settings

val space_settings__jupyter_server_app_settings :
  ?lifecycle_config_arns:string prop list ->
  code_repository:
    space_settings__jupyter_server_app_settings__code_repository list ->
  default_resource_spec:
    space_settings__jupyter_server_app_settings__default_resource_spec
    list ->
  unit ->
  space_settings__jupyter_server_app_settings

type space_settings__kernel_gateway_app_settings__custom_image

val space_settings__kernel_gateway_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  space_settings__kernel_gateway_app_settings__custom_image

type space_settings__kernel_gateway_app_settings__default_resource_spec

val space_settings__kernel_gateway_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  space_settings__kernel_gateway_app_settings__default_resource_spec

type space_settings__kernel_gateway_app_settings

val space_settings__kernel_gateway_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    space_settings__kernel_gateway_app_settings__custom_image list ->
  default_resource_spec:
    space_settings__kernel_gateway_app_settings__default_resource_spec
    list ->
  unit ->
  space_settings__kernel_gateway_app_settings

type space_settings__space_storage_settings__ebs_storage_settings

val space_settings__space_storage_settings__ebs_storage_settings :
  ebs_volume_size_in_gb:float prop ->
  unit ->
  space_settings__space_storage_settings__ebs_storage_settings

type space_settings__space_storage_settings

val space_settings__space_storage_settings :
  ebs_storage_settings:
    space_settings__space_storage_settings__ebs_storage_settings list ->
  unit ->
  space_settings__space_storage_settings

type space_settings

val space_settings :
  ?app_type:string prop ->
  ?code_editor_app_settings:
    space_settings__code_editor_app_settings list ->
  ?custom_file_system:space_settings__custom_file_system list ->
  ?jupyter_lab_app_settings:
    space_settings__jupyter_lab_app_settings list ->
  ?jupyter_server_app_settings:
    space_settings__jupyter_server_app_settings list ->
  ?kernel_gateway_app_settings:
    space_settings__kernel_gateway_app_settings list ->
  ?space_storage_settings:space_settings__space_storage_settings list ->
  unit ->
  space_settings

type space_sharing_settings

val space_sharing_settings :
  sharing_type:string prop -> unit -> space_sharing_settings

type aws_sagemaker_space

val aws_sagemaker_space :
  ?id:string prop ->
  ?space_display_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?ownership_settings:ownership_settings list ->
  ?space_settings:space_settings list ->
  ?space_sharing_settings:space_sharing_settings list ->
  domain_id:string prop ->
  space_name:string prop ->
  unit ->
  aws_sagemaker_space

val yojson_of_aws_sagemaker_space : aws_sagemaker_space -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain_id : string prop;
  home_efs_file_system_uid : string prop;
  id : string prop;
  space_display_name : string prop;
  space_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?space_display_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?ownership_settings:ownership_settings list ->
  ?space_settings:space_settings list ->
  ?space_sharing_settings:space_sharing_settings list ->
  domain_id:string prop ->
  space_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?space_display_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?ownership_settings:ownership_settings list ->
  ?space_settings:space_settings list ->
  ?space_sharing_settings:space_sharing_settings list ->
  domain_id:string prop ->
  space_name:string prop ->
  string ->
  t Tf_core.resource
