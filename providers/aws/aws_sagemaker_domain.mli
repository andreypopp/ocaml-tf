(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_space_settings__jupyter_server_app_settings__code_repository

val default_space_settings__jupyter_server_app_settings__code_repository :
  repository_url:string prop ->
  unit ->
  default_space_settings__jupyter_server_app_settings__code_repository

type default_space_settings__jupyter_server_app_settings__default_resource_spec

val default_space_settings__jupyter_server_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_space_settings__jupyter_server_app_settings__default_resource_spec

type default_space_settings__jupyter_server_app_settings

val default_space_settings__jupyter_server_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?default_resource_spec:
    default_space_settings__jupyter_server_app_settings__default_resource_spec
    list ->
  code_repository:
    default_space_settings__jupyter_server_app_settings__code_repository
    list ->
  unit ->
  default_space_settings__jupyter_server_app_settings

type default_space_settings__kernel_gateway_app_settings__custom_image

val default_space_settings__kernel_gateway_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  default_space_settings__kernel_gateway_app_settings__custom_image

type default_space_settings__kernel_gateway_app_settings__default_resource_spec

val default_space_settings__kernel_gateway_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_space_settings__kernel_gateway_app_settings__default_resource_spec

type default_space_settings__kernel_gateway_app_settings

val default_space_settings__kernel_gateway_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    default_space_settings__kernel_gateway_app_settings__custom_image
    list ->
  ?default_resource_spec:
    default_space_settings__kernel_gateway_app_settings__default_resource_spec
    list ->
  unit ->
  default_space_settings__kernel_gateway_app_settings

type default_space_settings

val default_space_settings :
  ?security_groups:string prop list ->
  ?jupyter_server_app_settings:
    default_space_settings__jupyter_server_app_settings list ->
  ?kernel_gateway_app_settings:
    default_space_settings__kernel_gateway_app_settings list ->
  execution_role:string prop ->
  unit ->
  default_space_settings

type default_user_settings__canvas_app_settings__direct_deploy_settings

val default_user_settings__canvas_app_settings__direct_deploy_settings :
  ?status:string prop ->
  unit ->
  default_user_settings__canvas_app_settings__direct_deploy_settings

type default_user_settings__canvas_app_settings__generative_ai_settings

val default_user_settings__canvas_app_settings__generative_ai_settings :
  ?amazon_bedrock_role_arn:string prop ->
  unit ->
  default_user_settings__canvas_app_settings__generative_ai_settings

type default_user_settings__canvas_app_settings__identity_provider_oauth_settings

val default_user_settings__canvas_app_settings__identity_provider_oauth_settings :
  ?data_source_name:string prop ->
  ?status:string prop ->
  secret_arn:string prop ->
  unit ->
  default_user_settings__canvas_app_settings__identity_provider_oauth_settings

type default_user_settings__canvas_app_settings__kendra_settings

val default_user_settings__canvas_app_settings__kendra_settings :
  ?status:string prop ->
  unit ->
  default_user_settings__canvas_app_settings__kendra_settings

type default_user_settings__canvas_app_settings__model_register_settings

val default_user_settings__canvas_app_settings__model_register_settings :
  ?cross_account_model_register_role_arn:string prop ->
  ?status:string prop ->
  unit ->
  default_user_settings__canvas_app_settings__model_register_settings

type default_user_settings__canvas_app_settings__time_series_forecasting_settings

val default_user_settings__canvas_app_settings__time_series_forecasting_settings :
  ?amazon_forecast_role_arn:string prop ->
  ?status:string prop ->
  unit ->
  default_user_settings__canvas_app_settings__time_series_forecasting_settings

type default_user_settings__canvas_app_settings__workspace_settings

val default_user_settings__canvas_app_settings__workspace_settings :
  ?s3_artifact_path:string prop ->
  ?s3_kms_key_id:string prop ->
  unit ->
  default_user_settings__canvas_app_settings__workspace_settings

type default_user_settings__canvas_app_settings

val default_user_settings__canvas_app_settings :
  ?direct_deploy_settings:
    default_user_settings__canvas_app_settings__direct_deploy_settings
    list ->
  ?generative_ai_settings:
    default_user_settings__canvas_app_settings__generative_ai_settings
    list ->
  ?identity_provider_oauth_settings:
    default_user_settings__canvas_app_settings__identity_provider_oauth_settings
    list ->
  ?kendra_settings:
    default_user_settings__canvas_app_settings__kendra_settings list ->
  ?model_register_settings:
    default_user_settings__canvas_app_settings__model_register_settings
    list ->
  ?time_series_forecasting_settings:
    default_user_settings__canvas_app_settings__time_series_forecasting_settings
    list ->
  ?workspace_settings:
    default_user_settings__canvas_app_settings__workspace_settings
    list ->
  unit ->
  default_user_settings__canvas_app_settings

type default_user_settings__code_editor_app_settings__custom_image

val default_user_settings__code_editor_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  default_user_settings__code_editor_app_settings__custom_image

type default_user_settings__code_editor_app_settings__default_resource_spec

val default_user_settings__code_editor_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_user_settings__code_editor_app_settings__default_resource_spec

type default_user_settings__code_editor_app_settings

val default_user_settings__code_editor_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    default_user_settings__code_editor_app_settings__custom_image
    list ->
  ?default_resource_spec:
    default_user_settings__code_editor_app_settings__default_resource_spec
    list ->
  unit ->
  default_user_settings__code_editor_app_settings

type default_user_settings__custom_file_system_config__efs_file_system_config

val default_user_settings__custom_file_system_config__efs_file_system_config :
  file_system_id:string prop ->
  file_system_path:string prop ->
  unit ->
  default_user_settings__custom_file_system_config__efs_file_system_config

type default_user_settings__custom_file_system_config

val default_user_settings__custom_file_system_config :
  ?efs_file_system_config:
    default_user_settings__custom_file_system_config__efs_file_system_config
    list ->
  unit ->
  default_user_settings__custom_file_system_config

type default_user_settings__custom_posix_user_config

val default_user_settings__custom_posix_user_config :
  gid:float prop ->
  uid:float prop ->
  unit ->
  default_user_settings__custom_posix_user_config

type default_user_settings__jupyter_lab_app_settings__code_repository

val default_user_settings__jupyter_lab_app_settings__code_repository :
  repository_url:string prop ->
  unit ->
  default_user_settings__jupyter_lab_app_settings__code_repository

type default_user_settings__jupyter_lab_app_settings__custom_image

val default_user_settings__jupyter_lab_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  default_user_settings__jupyter_lab_app_settings__custom_image

type default_user_settings__jupyter_lab_app_settings__default_resource_spec

val default_user_settings__jupyter_lab_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_user_settings__jupyter_lab_app_settings__default_resource_spec

type default_user_settings__jupyter_lab_app_settings

val default_user_settings__jupyter_lab_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    default_user_settings__jupyter_lab_app_settings__custom_image
    list ->
  ?default_resource_spec:
    default_user_settings__jupyter_lab_app_settings__default_resource_spec
    list ->
  code_repository:
    default_user_settings__jupyter_lab_app_settings__code_repository
    list ->
  unit ->
  default_user_settings__jupyter_lab_app_settings

type default_user_settings__jupyter_server_app_settings__code_repository

val default_user_settings__jupyter_server_app_settings__code_repository :
  repository_url:string prop ->
  unit ->
  default_user_settings__jupyter_server_app_settings__code_repository

type default_user_settings__jupyter_server_app_settings__default_resource_spec

val default_user_settings__jupyter_server_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_user_settings__jupyter_server_app_settings__default_resource_spec

type default_user_settings__jupyter_server_app_settings

val default_user_settings__jupyter_server_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?default_resource_spec:
    default_user_settings__jupyter_server_app_settings__default_resource_spec
    list ->
  code_repository:
    default_user_settings__jupyter_server_app_settings__code_repository
    list ->
  unit ->
  default_user_settings__jupyter_server_app_settings

type default_user_settings__kernel_gateway_app_settings__custom_image

val default_user_settings__kernel_gateway_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  default_user_settings__kernel_gateway_app_settings__custom_image

type default_user_settings__kernel_gateway_app_settings__default_resource_spec

val default_user_settings__kernel_gateway_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_user_settings__kernel_gateway_app_settings__default_resource_spec

type default_user_settings__kernel_gateway_app_settings

val default_user_settings__kernel_gateway_app_settings :
  ?lifecycle_config_arns:string prop list ->
  ?custom_image:
    default_user_settings__kernel_gateway_app_settings__custom_image
    list ->
  ?default_resource_spec:
    default_user_settings__kernel_gateway_app_settings__default_resource_spec
    list ->
  unit ->
  default_user_settings__kernel_gateway_app_settings

type default_user_settings__r_session_app_settings__custom_image

val default_user_settings__r_session_app_settings__custom_image :
  ?image_version_number:float prop ->
  app_image_config_name:string prop ->
  image_name:string prop ->
  unit ->
  default_user_settings__r_session_app_settings__custom_image

type default_user_settings__r_session_app_settings__default_resource_spec

val default_user_settings__r_session_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_user_settings__r_session_app_settings__default_resource_spec

type default_user_settings__r_session_app_settings

val default_user_settings__r_session_app_settings :
  ?custom_image:
    default_user_settings__r_session_app_settings__custom_image list ->
  ?default_resource_spec:
    default_user_settings__r_session_app_settings__default_resource_spec
    list ->
  unit ->
  default_user_settings__r_session_app_settings

type default_user_settings__r_studio_server_pro_app_settings

val default_user_settings__r_studio_server_pro_app_settings :
  ?access_status:string prop ->
  ?user_group:string prop ->
  unit ->
  default_user_settings__r_studio_server_pro_app_settings

type default_user_settings__sharing_settings

val default_user_settings__sharing_settings :
  ?notebook_output_option:string prop ->
  ?s3_kms_key_id:string prop ->
  ?s3_output_path:string prop ->
  unit ->
  default_user_settings__sharing_settings

type default_user_settings__space_storage_settings__default_ebs_storage_settings

val default_user_settings__space_storage_settings__default_ebs_storage_settings :
  default_ebs_volume_size_in_gb:float prop ->
  maximum_ebs_volume_size_in_gb:float prop ->
  unit ->
  default_user_settings__space_storage_settings__default_ebs_storage_settings

type default_user_settings__space_storage_settings

val default_user_settings__space_storage_settings :
  ?default_ebs_storage_settings:
    default_user_settings__space_storage_settings__default_ebs_storage_settings
    list ->
  unit ->
  default_user_settings__space_storage_settings

type default_user_settings__tensor_board_app_settings__default_resource_spec

val default_user_settings__tensor_board_app_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  default_user_settings__tensor_board_app_settings__default_resource_spec

type default_user_settings__tensor_board_app_settings

val default_user_settings__tensor_board_app_settings :
  ?default_resource_spec:
    default_user_settings__tensor_board_app_settings__default_resource_spec
    list ->
  unit ->
  default_user_settings__tensor_board_app_settings

type default_user_settings

val default_user_settings :
  ?default_landing_uri:string prop ->
  ?security_groups:string prop list ->
  ?studio_web_portal:string prop ->
  ?canvas_app_settings:
    default_user_settings__canvas_app_settings list ->
  ?code_editor_app_settings:
    default_user_settings__code_editor_app_settings list ->
  ?custom_file_system_config:
    default_user_settings__custom_file_system_config list ->
  ?custom_posix_user_config:
    default_user_settings__custom_posix_user_config list ->
  ?jupyter_lab_app_settings:
    default_user_settings__jupyter_lab_app_settings list ->
  ?jupyter_server_app_settings:
    default_user_settings__jupyter_server_app_settings list ->
  ?kernel_gateway_app_settings:
    default_user_settings__kernel_gateway_app_settings list ->
  ?r_session_app_settings:
    default_user_settings__r_session_app_settings list ->
  ?r_studio_server_pro_app_settings:
    default_user_settings__r_studio_server_pro_app_settings list ->
  ?sharing_settings:default_user_settings__sharing_settings list ->
  ?space_storage_settings:
    default_user_settings__space_storage_settings list ->
  ?tensor_board_app_settings:
    default_user_settings__tensor_board_app_settings list ->
  execution_role:string prop ->
  unit ->
  default_user_settings

type domain_settings__r_studio_server_pro_domain_settings__default_resource_spec

val domain_settings__r_studio_server_pro_domain_settings__default_resource_spec :
  ?instance_type:string prop ->
  ?lifecycle_config_arn:string prop ->
  ?sagemaker_image_arn:string prop ->
  ?sagemaker_image_version_alias:string prop ->
  ?sagemaker_image_version_arn:string prop ->
  unit ->
  domain_settings__r_studio_server_pro_domain_settings__default_resource_spec

type domain_settings__r_studio_server_pro_domain_settings

val domain_settings__r_studio_server_pro_domain_settings :
  ?r_studio_connect_url:string prop ->
  ?r_studio_package_manager_url:string prop ->
  ?default_resource_spec:
    domain_settings__r_studio_server_pro_domain_settings__default_resource_spec
    list ->
  domain_execution_role_arn:string prop ->
  unit ->
  domain_settings__r_studio_server_pro_domain_settings

type domain_settings

val domain_settings :
  ?execution_role_identity_config:string prop ->
  ?security_group_ids:string prop list ->
  ?r_studio_server_pro_domain_settings:
    domain_settings__r_studio_server_pro_domain_settings list ->
  unit ->
  domain_settings

type retention_policy

val retention_policy :
  ?home_efs_file_system:string prop -> unit -> retention_policy

type aws_sagemaker_domain

val aws_sagemaker_domain :
  ?app_network_access_type:string prop ->
  ?app_security_group_management:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?default_space_settings:default_space_settings list ->
  ?domain_settings:domain_settings list ->
  ?retention_policy:retention_policy list ->
  auth_mode:string prop ->
  domain_name:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  default_user_settings:default_user_settings list ->
  unit ->
  aws_sagemaker_domain

val yojson_of_aws_sagemaker_domain : aws_sagemaker_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_network_access_type : string prop;
  app_security_group_management : string prop;
  arn : string prop;
  auth_mode : string prop;
  domain_name : string prop;
  home_efs_file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  security_group_id_for_domain_boundary : string prop;
  single_sign_on_application_arn : string prop;
  single_sign_on_managed_application_instance_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_network_access_type:string prop ->
  ?app_security_group_management:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?default_space_settings:default_space_settings list ->
  ?domain_settings:domain_settings list ->
  ?retention_policy:retention_policy list ->
  auth_mode:string prop ->
  domain_name:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  default_user_settings:default_user_settings list ->
  string ->
  t

val make :
  ?app_network_access_type:string prop ->
  ?app_security_group_management:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?default_space_settings:default_space_settings list ->
  ?domain_settings:domain_settings list ->
  ?retention_policy:retention_policy list ->
  auth_mode:string prop ->
  domain_name:string prop ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  default_user_settings:default_user_settings list ->
  string ->
  t Tf_core.resource
