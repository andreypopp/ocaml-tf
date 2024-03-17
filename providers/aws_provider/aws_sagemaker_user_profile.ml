(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__direct_deploy_settings = {
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__direct_deploy_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__identity_provider_oauth_settings = {
  data_source_name : string prop option; [@option]
      (** data_source_name *)
  secret_arn : string prop;  (** secret_arn *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__identity_provider_oauth_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__kendra_settings = {
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__kendra_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__model_register_settings = {
  cross_account_model_register_role_arn : string prop option;
      [@option]
      (** cross_account_model_register_role_arn *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__model_register_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__time_series_forecasting_settings = {
  amazon_forecast_role_arn : string prop option; [@option]
      (** amazon_forecast_role_arn *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__time_series_forecasting_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__workspace_settings = {
  s3_artifact_path : string prop option; [@option]
      (** s3_artifact_path *)
  s3_kms_key_id : string prop option; [@option]  (** s3_kms_key_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__workspace_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings = {
  direct_deploy_settings :
    aws_sagemaker_user_profile__user_settings__canvas_app_settings__direct_deploy_settings
    list;
  identity_provider_oauth_settings :
    aws_sagemaker_user_profile__user_settings__canvas_app_settings__identity_provider_oauth_settings
    list;
  kendra_settings :
    aws_sagemaker_user_profile__user_settings__canvas_app_settings__kendra_settings
    list;
  model_register_settings :
    aws_sagemaker_user_profile__user_settings__canvas_app_settings__model_register_settings
    list;
  time_series_forecasting_settings :
    aws_sagemaker_user_profile__user_settings__canvas_app_settings__time_series_forecasting_settings
    list;
  workspace_settings :
    aws_sagemaker_user_profile__user_settings__canvas_app_settings__workspace_settings
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings *)

type aws_sagemaker_user_profile__user_settings__code_editor_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle_config_arn : string prop option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string prop option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string prop option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string prop option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__code_editor_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__code_editor_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
      (** lifecycle_config_arns *)
  default_resource_spec :
    aws_sagemaker_user_profile__user_settings__code_editor_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__code_editor_app_settings *)

type aws_sagemaker_user_profile__user_settings__custom_file_system_config__efs_file_system_config = {
  file_system_id : string prop;  (** file_system_id *)
  file_system_path : string prop option; [@option]
      (** file_system_path *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__custom_file_system_config__efs_file_system_config *)

type aws_sagemaker_user_profile__user_settings__custom_file_system_config = {
  efs_file_system_config :
    aws_sagemaker_user_profile__user_settings__custom_file_system_config__efs_file_system_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__custom_file_system_config *)

type aws_sagemaker_user_profile__user_settings__custom_posix_user_config = {
  gid : float prop;  (** gid *)
  uid : float prop;  (** uid *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__custom_posix_user_config *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__code_repository = {
  repository_url : string prop;  (** repository_url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__code_repository *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__custom_image = {
  app_image_config_name : string prop;  (** app_image_config_name *)
  image_name : string prop;  (** image_name *)
  image_version_number : float prop option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__custom_image *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle_config_arn : string prop option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string prop option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string prop option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string prop option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
      (** lifecycle_config_arns *)
  code_repository :
    aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__code_repository
    list;
  custom_image :
    aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__custom_image
    list;
  default_resource_spec :
    aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings *)

type aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__code_repository = {
  repository_url : string prop;  (** repository_url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__code_repository *)

type aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle_config_arn : string prop option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string prop option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string prop option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string prop option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
      (** lifecycle_config_arns *)
  code_repository :
    aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__code_repository
    list;
  default_resource_spec :
    aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings *)

type aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__custom_image = {
  app_image_config_name : string prop;  (** app_image_config_name *)
  image_name : string prop;  (** image_name *)
  image_version_number : float prop option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__custom_image *)

type aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle_config_arn : string prop option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string prop option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string prop option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string prop option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
      (** lifecycle_config_arns *)
  custom_image :
    aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__custom_image
    list;
  default_resource_spec :
    aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings *)

type aws_sagemaker_user_profile__user_settings__r_session_app_settings__custom_image = {
  app_image_config_name : string prop;  (** app_image_config_name *)
  image_name : string prop;  (** image_name *)
  image_version_number : float prop option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__r_session_app_settings__custom_image *)

type aws_sagemaker_user_profile__user_settings__r_session_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle_config_arn : string prop option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string prop option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string prop option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string prop option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__r_session_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__r_session_app_settings = {
  custom_image :
    aws_sagemaker_user_profile__user_settings__r_session_app_settings__custom_image
    list;
  default_resource_spec :
    aws_sagemaker_user_profile__user_settings__r_session_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__r_session_app_settings *)

type aws_sagemaker_user_profile__user_settings__r_studio_server_pro_app_settings = {
  access_status : string prop option; [@option]  (** access_status *)
  user_group : string prop option; [@option]  (** user_group *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__r_studio_server_pro_app_settings *)

type aws_sagemaker_user_profile__user_settings__sharing_settings = {
  notebook_output_option : string prop option; [@option]
      (** notebook_output_option *)
  s3_kms_key_id : string prop option; [@option]  (** s3_kms_key_id *)
  s3_output_path : string prop option; [@option]
      (** s3_output_path *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__sharing_settings *)

type aws_sagemaker_user_profile__user_settings__space_storage_settings__default_ebs_storage_settings = {
  default_ebs_volume_size_in_gb : float prop;
      (** default_ebs_volume_size_in_gb *)
  maximum_ebs_volume_size_in_gb : float prop;
      (** maximum_ebs_volume_size_in_gb *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__space_storage_settings__default_ebs_storage_settings *)

type aws_sagemaker_user_profile__user_settings__space_storage_settings = {
  default_ebs_storage_settings :
    aws_sagemaker_user_profile__user_settings__space_storage_settings__default_ebs_storage_settings
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__space_storage_settings *)

type aws_sagemaker_user_profile__user_settings__tensor_board_app_settings__default_resource_spec = {
  instance_type : string prop option; [@option]  (** instance_type *)
  lifecycle_config_arn : string prop option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string prop option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string prop option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string prop option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__tensor_board_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__tensor_board_app_settings = {
  default_resource_spec :
    aws_sagemaker_user_profile__user_settings__tensor_board_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__tensor_board_app_settings *)

type aws_sagemaker_user_profile__user_settings = {
  default_landing_uri : string prop option; [@option]
      (** default_landing_uri *)
  execution_role : string prop;  (** execution_role *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  studio_web_portal : string prop option; [@option]
      (** studio_web_portal *)
  canvas_app_settings :
    aws_sagemaker_user_profile__user_settings__canvas_app_settings
    list;
  code_editor_app_settings :
    aws_sagemaker_user_profile__user_settings__code_editor_app_settings
    list;
  custom_file_system_config :
    aws_sagemaker_user_profile__user_settings__custom_file_system_config
    list;
  custom_posix_user_config :
    aws_sagemaker_user_profile__user_settings__custom_posix_user_config
    list;
  jupyter_lab_app_settings :
    aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings
    list;
  jupyter_server_app_settings :
    aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings
    list;
  kernel_gateway_app_settings :
    aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings
    list;
  r_session_app_settings :
    aws_sagemaker_user_profile__user_settings__r_session_app_settings
    list;
  r_studio_server_pro_app_settings :
    aws_sagemaker_user_profile__user_settings__r_studio_server_pro_app_settings
    list;
  sharing_settings :
    aws_sagemaker_user_profile__user_settings__sharing_settings list;
  space_storage_settings :
    aws_sagemaker_user_profile__user_settings__space_storage_settings
    list;
  tensor_board_app_settings :
    aws_sagemaker_user_profile__user_settings__tensor_board_app_settings
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings *)

type aws_sagemaker_user_profile = {
  domain_id : string prop;  (** domain_id *)
  id : string prop option; [@option]  (** id *)
  single_sign_on_user_identifier : string prop option; [@option]
      (** single_sign_on_user_identifier *)
  single_sign_on_user_value : string prop option; [@option]
      (** single_sign_on_user_value *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_profile_name : string prop;  (** user_profile_name *)
  user_settings : aws_sagemaker_user_profile__user_settings list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile *)

let aws_sagemaker_user_profile ?id ?single_sign_on_user_identifier
    ?single_sign_on_user_value ?tags ?tags_all ~domain_id
    ~user_profile_name ~user_settings __resource_id =
  let __resource_type = "aws_sagemaker_user_profile" in
  let __resource =
    {
      domain_id;
      id;
      single_sign_on_user_identifier;
      single_sign_on_user_value;
      tags;
      tags_all;
      user_profile_name;
      user_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_user_profile __resource);
  ()
