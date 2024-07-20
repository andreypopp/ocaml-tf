(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type user_settings__canvas_app_settings__direct_deploy_settings

val user_settings__canvas_app_settings__direct_deploy_settings :
  ?status:string prop ->
  unit ->
  user_settings__canvas_app_settings__direct_deploy_settings

type user_settings__canvas_app_settings__generative_ai_settings

val user_settings__canvas_app_settings__generative_ai_settings :
  ?amazon_bedrock_role_arn:string prop ->
  unit ->
  user_settings__canvas_app_settings__generative_ai_settings

type user_settings__canvas_app_settings__identity_provider_oauth_settings

val user_settings__canvas_app_settings__identity_provider_oauth_settings :
  ?data_source_name:string prop ->
  ?status:string prop ->
  secret_arn:string prop ->
  unit ->
  user_settings__canvas_app_settings__identity_provider_oauth_settings

type user_settings__canvas_app_settings__kendra_settings

val user_settings__canvas_app_settings__kendra_settings :
  ?status:string prop ->
  unit ->
  user_settings__canvas_app_settings__kendra_settings

type user_settings__canvas_app_settings__model_register_settings

val user_settings__canvas_app_settings__model_register_settings :
  ?cross_account_model_register_role_arn:string prop ->
  ?status:string prop ->
  unit ->
  user_settings__canvas_app_settings__model_register_settings

type user_settings__canvas_app_settings__time_series_forecasting_settings

val user_settings__canvas_app_settings__time_series_forecasting_settings :
  ?amazon_forecast_role_arn:string prop ->
  ?status:string prop ->
  unit ->
  user_settings__canvas_app_settings__time_series_forecasting_settings

type user_settings__canvas_app_settings__workspace_settings

val user_settings__canvas_app_settings__workspace_settings :
  ?s3_artifact_path:string prop ->
  ?s3_kms_key_id:string prop ->
  unit ->
  user_settings__canvas_app_settings__workspace_settings

type user_settings__canvas_app_settings

val user_settings__canvas_app_settings :
  ?direct_deploy_settings:
    user_settings__canvas_app_settings__direct_deploy_settings list ->
  ?generative_ai_settings:
    user_settings__canvas_app_settings__generative_ai_settings list ->
  ?identity_provider_oauth_settings:
    user_settings__canvas_app_settings__identity_provider_oauth_settings
    list ->
  ?kendra_settings:
    user_settings__canvas_app_settings__kendra_settings list ->
  ?model_register_settings:
    user_settings__canvas_app_settings__model_register_settings list ->
  ?time_series_forecasting_settings:
    user_settings__canvas_app_settings__time_series_forecasting_settings
    list ->
  ?workspace_settings:
    user_settings__canvas_app_settings__workspace_settings list ->
  unit ->
  user_settings__canvas_app_settings

type user_settings__code_editor_app_settings__custom_image

val user_settings__code_editor_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  user_settings__code_editor_app_settings__custom_image

type user_settings__code_editor_app_settings__default_resource_spec

val user_settings__code_editor_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  user_settings__code_editor_app_settings__default_resource_spec

type user_settings__code_editor_app_settings

val user_settings__code_editor_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    user_settings__code_editor_app_settings__custom_image list ->
  ?default_resource_spec:
    user_settings__code_editor_app_settings__default_resource_spec
    list ->
  unit ->
  user_settings__code_editor_app_settings

type user_settings__custom_file_system_config__efs_file_system_config

val user_settings__custom_file_system_config__efs_file_system_config :
  ?file_system_path:string prop ->
  file_system_id:string prop ->
  unit ->
  user_settings__custom_file_system_config__efs_file_system_config

type user_settings__custom_file_system_config

val user_settings__custom_file_system_config :
  ?efs_file_system_config:
    user_settings__custom_file_system_config__efs_file_system_config
    list ->
  unit ->
  user_settings__custom_file_system_config

type user_settings__custom_posix_user_config

val user_settings__custom_posix_user_config :
  gid:float prop ->
  uid:float prop ->
  unit ->
  user_settings__custom_posix_user_config

type user_settings__jupyter_lab_app_settings__code_repository

val user_settings__jupyter_lab_app_settings__code_repository :
  repository_url:string prop ->
  unit ->
  user_settings__jupyter_lab_app_settings__code_repository

type user_settings__jupyter_lab_app_settings__custom_image

val user_settings__jupyter_lab_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  user_settings__jupyter_lab_app_settings__custom_image

type user_settings__jupyter_lab_app_settings__default_resource_spec

val user_settings__jupyter_lab_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  user_settings__jupyter_lab_app_settings__default_resource_spec

type user_settings__jupyter_lab_app_settings

val user_settings__jupyter_lab_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    user_settings__jupyter_lab_app_settings__custom_image list ->
  ?default_resource_spec:
    user_settings__jupyter_lab_app_settings__default_resource_spec
    list ->
  code_repository:
    user_settings__jupyter_lab_app_settings__code_repository list ->
  unit ->
  user_settings__jupyter_lab_app_settings

type user_settings__jupyter_server_app_settings__code_repository

val user_settings__jupyter_server_app_settings__code_repository :
  repository_url:string prop ->
  unit ->
  user_settings__jupyter_server_app_settings__code_repository

type user_settings__jupyter_server_app_settings__default_resource_spec

val user_settings__jupyter_server_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  user_settings__jupyter_server_app_settings__default_resource_spec

type user_settings__jupyter_server_app_settings

val user_settings__jupyter_server_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?default_resource_spec:
    user_settings__jupyter_server_app_settings__default_resource_spec
    list ->
  code_repository:
    user_settings__jupyter_server_app_settings__code_repository list ->
  unit ->
  user_settings__jupyter_server_app_settings

type user_settings__kernel_gateway_app_settings__custom_image

val user_settings__kernel_gateway_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  user_settings__kernel_gateway_app_settings__custom_image

type user_settings__kernel_gateway_app_settings__default_resource_spec

val user_settings__kernel_gateway_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  user_settings__kernel_gateway_app_settings__default_resource_spec

type user_settings__kernel_gateway_app_settings

val user_settings__kernel_gateway_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    user_settings__kernel_gateway_app_settings__custom_image list ->
  ?default_resource_spec:
    user_settings__kernel_gateway_app_settings__default_resource_spec
    list ->
  unit ->
  user_settings__kernel_gateway_app_settings

type user_settings__r_session_app_settings__custom_image

val user_settings__r_session_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  user_settings__r_session_app_settings__custom_image

type user_settings__r_session_app_settings__default_resource_spec

val user_settings__r_session_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  user_settings__r_session_app_settings__default_resource_spec

type user_settings__r_session_app_settings

val user_settings__r_session_app_settings :
  ?custom_image:
    user_settings__r_session_app_settings__custom_image list ->
  ?default_resource_spec:
    user_settings__r_session_app_settings__default_resource_spec list ->
  unit ->
  user_settings__r_session_app_settings

type user_settings__r_studio_server_pro_app_settings

val user_settings__r_studio_server_pro_app_settings :
  ?access_status:string prop ->
  ?user_group:string prop ->
  unit ->
  user_settings__r_studio_server_pro_app_settings

type user_settings__sharing_settings

val user_settings__sharing_settings :
  ?notebook_output_option:string prop ->
  ?s3_kms_key_id:string prop ->
  ?s3_output_path:string prop ->
  unit ->
  user_settings__sharing_settings

type user_settings__space_storage_settings__default_ebs_storage_settings

val user_settings__space_storage_settings__default_ebs_storage_settings :
  default_ebs_volume_size_in_gb:float prop ->
  maximum_ebs_volume_size_in_gb:float prop ->
  unit ->
  user_settings__space_storage_settings__default_ebs_storage_settings

type user_settings__space_storage_settings

val user_settings__space_storage_settings :
  ?default_ebs_storage_settings:
    user_settings__space_storage_settings__default_ebs_storage_settings
    list ->
  unit ->
  user_settings__space_storage_settings

type user_settings__tensor_board_app_settings__default_resource_spec

val user_settings__tensor_board_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  user_settings__tensor_board_app_settings__default_resource_spec

type user_settings__tensor_board_app_settings

val user_settings__tensor_board_app_settings :
  ?default_resource_spec:
    user_settings__tensor_board_app_settings__default_resource_spec
    list ->
  unit ->
  user_settings__tensor_board_app_settings

type user_settings

val user_settings :
  ?default_landing_uri:string prop ->
  ?security_groups:string prop list ->
  ?studio_web_portal:string prop ->
  ?canvas_app_settings:user_settings__canvas_app_settings list ->
  ?code_editor_app_settings:
    user_settings__code_editor_app_settings list ->
  ?custom_file_system_config:
    user_settings__custom_file_system_config list ->
  ?custom_posix_user_config:
    user_settings__custom_posix_user_config list ->
  ?jupyter_lab_app_settings:
    user_settings__jupyter_lab_app_settings list ->
  ?jupyter_server_app_settings:
    user_settings__jupyter_server_app_settings list ->
  ?kernel_gateway_app_settings:
    user_settings__kernel_gateway_app_settings list ->
  ?r_session_app_settings:user_settings__r_session_app_settings list ->
  ?r_studio_server_pro_app_settings:
    user_settings__r_studio_server_pro_app_settings list ->
  ?sharing_settings:user_settings__sharing_settings list ->
  ?space_storage_settings:user_settings__space_storage_settings list ->
  ?tensor_board_app_settings:
    user_settings__tensor_board_app_settings list ->
  execution_role:string prop ->
  unit ->
  user_settings

type aws_sagemaker_user_profile

val aws_sagemaker_user_profile :
  ?id:string prop ->
  ?single_sign_on_user_identifier:string prop ->
  ?single_sign_on_user_value:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_settings:user_settings list ->
  domain_id:string prop ->
  user_profile_name:string prop ->
  unit ->
  aws_sagemaker_user_profile

val yojson_of_aws_sagemaker_user_profile :
  aws_sagemaker_user_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain_id : string prop;
  home_efs_file_system_uid : string prop;
  id : string prop;
  single_sign_on_user_identifier : string prop;
  single_sign_on_user_value : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_profile_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?single_sign_on_user_identifier:string prop ->
  ?single_sign_on_user_value:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_settings:user_settings list ->
  domain_id:string prop ->
  user_profile_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?single_sign_on_user_identifier:string prop ->
  ?single_sign_on_user_value:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_settings:user_settings list ->
  domain_id:string prop ->
  user_profile_name:string prop ->
  string ->
  t Tf_core.resource
