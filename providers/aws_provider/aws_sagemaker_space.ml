(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_space__ownership_settings = {
  owner_user_profile_name : string;  (** owner_user_profile_name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_space__ownership_settings *)

type aws_sagemaker_space__space_settings__code_editor_app_settings__default_resource_spec = {
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
(** aws_sagemaker_space__space_settings__code_editor_app_settings__default_resource_spec *)

type aws_sagemaker_space__space_settings__code_editor_app_settings = {
  default_resource_spec :
    aws_sagemaker_space__space_settings__code_editor_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__code_editor_app_settings *)

type aws_sagemaker_space__space_settings__custom_file_system__efs_file_system = {
  file_system_id : string;  (** file_system_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__custom_file_system__efs_file_system *)

type aws_sagemaker_space__space_settings__custom_file_system = {
  efs_file_system :
    aws_sagemaker_space__space_settings__custom_file_system__efs_file_system
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__custom_file_system *)

type aws_sagemaker_space__space_settings__jupyter_lab_app_settings__code_repository = {
  repository_url : string;  (** repository_url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__jupyter_lab_app_settings__code_repository *)

type aws_sagemaker_space__space_settings__jupyter_lab_app_settings__default_resource_spec = {
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
(** aws_sagemaker_space__space_settings__jupyter_lab_app_settings__default_resource_spec *)

type aws_sagemaker_space__space_settings__jupyter_lab_app_settings = {
  code_repository :
    aws_sagemaker_space__space_settings__jupyter_lab_app_settings__code_repository
    list;
  default_resource_spec :
    aws_sagemaker_space__space_settings__jupyter_lab_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__jupyter_lab_app_settings *)

type aws_sagemaker_space__space_settings__jupyter_server_app_settings__code_repository = {
  repository_url : string;  (** repository_url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__jupyter_server_app_settings__code_repository *)

type aws_sagemaker_space__space_settings__jupyter_server_app_settings__default_resource_spec = {
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
(** aws_sagemaker_space__space_settings__jupyter_server_app_settings__default_resource_spec *)

type aws_sagemaker_space__space_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string list option; [@option]
      (** lifecycle_config_arns *)
  code_repository :
    aws_sagemaker_space__space_settings__jupyter_server_app_settings__code_repository
    list;
  default_resource_spec :
    aws_sagemaker_space__space_settings__jupyter_server_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__jupyter_server_app_settings *)

type aws_sagemaker_space__space_settings__kernel_gateway_app_settings__custom_image = {
  app_image_config_name : string;  (** app_image_config_name *)
  image_name : string;  (** image_name *)
  image_version_number : float option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__kernel_gateway_app_settings__custom_image *)

type aws_sagemaker_space__space_settings__kernel_gateway_app_settings__default_resource_spec = {
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
(** aws_sagemaker_space__space_settings__kernel_gateway_app_settings__default_resource_spec *)

type aws_sagemaker_space__space_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string list option; [@option]
      (** lifecycle_config_arns *)
  custom_image :
    aws_sagemaker_space__space_settings__kernel_gateway_app_settings__custom_image
    list;
  default_resource_spec :
    aws_sagemaker_space__space_settings__kernel_gateway_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__kernel_gateway_app_settings *)

type aws_sagemaker_space__space_settings__space_storage_settings__ebs_storage_settings = {
  ebs_volume_size_in_gb : float;  (** ebs_volume_size_in_gb *)
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__space_storage_settings__ebs_storage_settings *)

type aws_sagemaker_space__space_settings__space_storage_settings = {
  ebs_storage_settings :
    aws_sagemaker_space__space_settings__space_storage_settings__ebs_storage_settings
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings__space_storage_settings *)

type aws_sagemaker_space__space_settings = {
  app_type : string option; [@option]  (** app_type *)
  code_editor_app_settings :
    aws_sagemaker_space__space_settings__code_editor_app_settings
    list;
  custom_file_system :
    aws_sagemaker_space__space_settings__custom_file_system list;
  jupyter_lab_app_settings :
    aws_sagemaker_space__space_settings__jupyter_lab_app_settings
    list;
  jupyter_server_app_settings :
    aws_sagemaker_space__space_settings__jupyter_server_app_settings
    list;
  kernel_gateway_app_settings :
    aws_sagemaker_space__space_settings__kernel_gateway_app_settings
    list;
  space_storage_settings :
    aws_sagemaker_space__space_settings__space_storage_settings list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_settings *)

type aws_sagemaker_space__space_sharing_settings = {
  sharing_type : string;  (** sharing_type *)
}
[@@deriving yojson_of]
(** aws_sagemaker_space__space_sharing_settings *)

type aws_sagemaker_space = {
  domain_id : string;  (** domain_id *)
  id : string option; [@option]  (** id *)
  space_display_name : string option; [@option]
      (** space_display_name *)
  space_name : string;  (** space_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  ownership_settings : aws_sagemaker_space__ownership_settings list;
  space_settings : aws_sagemaker_space__space_settings list;
  space_sharing_settings :
    aws_sagemaker_space__space_sharing_settings list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space *)

let aws_sagemaker_space ?id ?space_display_name ?tags ?tags_all
    ~domain_id ~space_name ~ownership_settings ~space_settings
    ~space_sharing_settings __resource_id =
  let __resource_type = "aws_sagemaker_space" in
  let __resource =
    {
      domain_id;
      id;
      space_display_name;
      space_name;
      tags;
      tags_all;
      ownership_settings;
      space_settings;
      space_sharing_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_space __resource);
  ()
