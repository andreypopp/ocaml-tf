(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__direct_deploy_settings = {
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__direct_deploy_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__identity_provider_oauth_settings = {
  data_source_name : string option; [@option]
      (** data_source_name *)
  secret_arn : string;  (** secret_arn *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__identity_provider_oauth_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__kendra_settings = {
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__kendra_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__model_register_settings = {
  cross_account_model_register_role_arn : string option; [@option]
      (** cross_account_model_register_role_arn *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__model_register_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__time_series_forecasting_settings = {
  amazon_forecast_role_arn : string option; [@option]
      (** amazon_forecast_role_arn *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__canvas_app_settings__time_series_forecasting_settings *)

type aws_sagemaker_user_profile__user_settings__canvas_app_settings__workspace_settings = {
  s3_artifact_path : string option; [@option]
      (** s3_artifact_path *)
  s3_kms_key_id : string option; [@option]  (** s3_kms_key_id *)
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
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle_config_arn : string option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__code_editor_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__code_editor_app_settings = {
  lifecycle_config_arns : string list option; [@option]
      (** lifecycle_config_arns *)
  default_resource_spec :
    aws_sagemaker_user_profile__user_settings__code_editor_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__code_editor_app_settings *)

type aws_sagemaker_user_profile__user_settings__custom_file_system_config__efs_file_system_config = {
  file_system_id : string;  (** file_system_id *)
  file_system_path : string option; [@option]  (** file_system_path *)
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
  gid : float;  (** gid *)
  uid : float;  (** uid *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__custom_posix_user_config *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__code_repository = {
  repository_url : string;  (** repository_url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__code_repository *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__custom_image = {
  app_image_config_name : string;  (** app_image_config_name *)
  image_name : string;  (** image_name *)
  image_version_number : float option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__custom_image *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__default_resource_spec = {
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle_config_arn : string option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__jupyter_lab_app_settings = {
  lifecycle_config_arns : string list option; [@option]
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
  repository_url : string;  (** repository_url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__code_repository *)

type aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__default_resource_spec = {
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle_config_arn : string option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string list option; [@option]
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
  app_image_config_name : string;  (** app_image_config_name *)
  image_name : string;  (** image_name *)
  image_version_number : float option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__custom_image *)

type aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__default_resource_spec = {
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle_config_arn : string option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string option; [@option]
      (** sagemaker_image_version_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings__default_resource_spec *)

type aws_sagemaker_user_profile__user_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string list option; [@option]
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
  app_image_config_name : string;  (** app_image_config_name *)
  image_name : string;  (** image_name *)
  image_version_number : float option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__r_session_app_settings__custom_image *)

type aws_sagemaker_user_profile__user_settings__r_session_app_settings__default_resource_spec = {
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle_config_arn : string option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string option; [@option]
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
  access_status : string option; [@option]  (** access_status *)
  user_group : string option; [@option]  (** user_group *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__r_studio_server_pro_app_settings *)

type aws_sagemaker_user_profile__user_settings__sharing_settings = {
  notebook_output_option : string option; [@option]
      (** notebook_output_option *)
  s3_kms_key_id : string option; [@option]  (** s3_kms_key_id *)
  s3_output_path : string option; [@option]  (** s3_output_path *)
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile__user_settings__sharing_settings *)

type aws_sagemaker_user_profile__user_settings__space_storage_settings__default_ebs_storage_settings = {
  default_ebs_volume_size_in_gb : float;
      (** default_ebs_volume_size_in_gb *)
  maximum_ebs_volume_size_in_gb : float;
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
  instance_type : string option; [@option]  (** instance_type *)
  lifecycle_config_arn : string option; [@option]
      (** lifecycle_config_arn *)
  sagemaker_image_arn : string option; [@option]
      (** sagemaker_image_arn *)
  sagemaker_image_version_alias : string option; [@option]
      (** sagemaker_image_version_alias *)
  sagemaker_image_version_arn : string option; [@option]
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
  default_landing_uri : string option; [@option]
      (** default_landing_uri *)
  execution_role : string;  (** execution_role *)
  security_groups : string list option; [@option]
      (** security_groups *)
  studio_web_portal : string option; [@option]
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
  domain_id : string;  (** domain_id *)
  single_sign_on_user_identifier : string option; [@option]
      (** single_sign_on_user_identifier *)
  single_sign_on_user_value : string option; [@option]
      (** single_sign_on_user_value *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_profile_name : string;  (** user_profile_name *)
  user_settings : aws_sagemaker_user_profile__user_settings list;
}
[@@deriving yojson_of]
(** aws_sagemaker_user_profile *)

let aws_sagemaker_user_profile ?single_sign_on_user_identifier
    ?single_sign_on_user_value ?tags ~domain_id ~user_profile_name
    ~user_settings __resource_id =
  let __resource_type = "aws_sagemaker_user_profile" in
  let __resource =
    {
      domain_id;
      single_sign_on_user_identifier;
      single_sign_on_user_value;
      tags;
      user_profile_name;
      user_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_user_profile __resource);
  ()
