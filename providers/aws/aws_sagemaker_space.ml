(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ownership_settings = {
  owner_user_profile_name : string prop;
      (** owner_user_profile_name *)
}
[@@deriving yojson_of]
(** ownership_settings *)

type space_settings__code_editor_app_settings__default_resource_spec = {
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
(** space_settings__code_editor_app_settings__default_resource_spec *)

type space_settings__code_editor_app_settings = {
  default_resource_spec :
    space_settings__code_editor_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** space_settings__code_editor_app_settings *)

type space_settings__custom_file_system__efs_file_system = {
  file_system_id : string prop;  (** file_system_id *)
}
[@@deriving yojson_of]
(** space_settings__custom_file_system__efs_file_system *)

type space_settings__custom_file_system = {
  efs_file_system :
    space_settings__custom_file_system__efs_file_system list;
}
[@@deriving yojson_of]
(** space_settings__custom_file_system *)

type space_settings__jupyter_lab_app_settings__code_repository = {
  repository_url : string prop;  (** repository_url *)
}
[@@deriving yojson_of]
(** space_settings__jupyter_lab_app_settings__code_repository *)

type space_settings__jupyter_lab_app_settings__default_resource_spec = {
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
(** space_settings__jupyter_lab_app_settings__default_resource_spec *)

type space_settings__jupyter_lab_app_settings = {
  code_repository :
    space_settings__jupyter_lab_app_settings__code_repository list;
  default_resource_spec :
    space_settings__jupyter_lab_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** space_settings__jupyter_lab_app_settings *)

type space_settings__jupyter_server_app_settings__code_repository = {
  repository_url : string prop;  (** repository_url *)
}
[@@deriving yojson_of]
(** space_settings__jupyter_server_app_settings__code_repository *)

type space_settings__jupyter_server_app_settings__default_resource_spec = {
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
(** space_settings__jupyter_server_app_settings__default_resource_spec *)

type space_settings__jupyter_server_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
      (** lifecycle_config_arns *)
  code_repository :
    space_settings__jupyter_server_app_settings__code_repository list;
  default_resource_spec :
    space_settings__jupyter_server_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** space_settings__jupyter_server_app_settings *)

type space_settings__kernel_gateway_app_settings__custom_image = {
  app_image_config_name : string prop;  (** app_image_config_name *)
  image_name : string prop;  (** image_name *)
  image_version_number : float prop option; [@option]
      (** image_version_number *)
}
[@@deriving yojson_of]
(** space_settings__kernel_gateway_app_settings__custom_image *)

type space_settings__kernel_gateway_app_settings__default_resource_spec = {
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
(** space_settings__kernel_gateway_app_settings__default_resource_spec *)

type space_settings__kernel_gateway_app_settings = {
  lifecycle_config_arns : string prop list option; [@option]
      (** lifecycle_config_arns *)
  custom_image :
    space_settings__kernel_gateway_app_settings__custom_image list;
  default_resource_spec :
    space_settings__kernel_gateway_app_settings__default_resource_spec
    list;
}
[@@deriving yojson_of]
(** space_settings__kernel_gateway_app_settings *)

type space_settings__space_storage_settings__ebs_storage_settings = {
  ebs_volume_size_in_gb : float prop;  (** ebs_volume_size_in_gb *)
}
[@@deriving yojson_of]
(** space_settings__space_storage_settings__ebs_storage_settings *)

type space_settings__space_storage_settings = {
  ebs_storage_settings :
    space_settings__space_storage_settings__ebs_storage_settings list;
}
[@@deriving yojson_of]
(** space_settings__space_storage_settings *)

type space_settings = {
  app_type : string prop option; [@option]  (** app_type *)
  code_editor_app_settings :
    space_settings__code_editor_app_settings list;
  custom_file_system : space_settings__custom_file_system list;
  jupyter_lab_app_settings :
    space_settings__jupyter_lab_app_settings list;
  jupyter_server_app_settings :
    space_settings__jupyter_server_app_settings list;
  kernel_gateway_app_settings :
    space_settings__kernel_gateway_app_settings list;
  space_storage_settings :
    space_settings__space_storage_settings list;
}
[@@deriving yojson_of]
(** space_settings *)

type space_sharing_settings = {
  sharing_type : string prop;  (** sharing_type *)
}
[@@deriving yojson_of]
(** space_sharing_settings *)

type aws_sagemaker_space = {
  domain_id : string prop;  (** domain_id *)
  id : string prop option; [@option]  (** id *)
  space_display_name : string prop option; [@option]
      (** space_display_name *)
  space_name : string prop;  (** space_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ownership_settings : ownership_settings list;
  space_settings : space_settings list;
  space_sharing_settings : space_sharing_settings list;
}
[@@deriving yojson_of]
(** aws_sagemaker_space *)

let ownership_settings ~owner_user_profile_name () :
    ownership_settings =
  { owner_user_profile_name }

let space_settings__code_editor_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__code_editor_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__code_editor_app_settings ~default_resource_spec
    () : space_settings__code_editor_app_settings =
  { default_resource_spec }

let space_settings__custom_file_system__efs_file_system
    ~file_system_id () :
    space_settings__custom_file_system__efs_file_system =
  { file_system_id }

let space_settings__custom_file_system ~efs_file_system () :
    space_settings__custom_file_system =
  { efs_file_system }

let space_settings__jupyter_lab_app_settings__code_repository
    ~repository_url () :
    space_settings__jupyter_lab_app_settings__code_repository =
  { repository_url }

let space_settings__jupyter_lab_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__jupyter_lab_app_settings__default_resource_spec =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__jupyter_lab_app_settings ~code_repository
    ~default_resource_spec () :
    space_settings__jupyter_lab_app_settings =
  { code_repository; default_resource_spec }

let space_settings__jupyter_server_app_settings__code_repository
    ~repository_url () :
    space_settings__jupyter_server_app_settings__code_repository =
  { repository_url }

let space_settings__jupyter_server_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__jupyter_server_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__jupyter_server_app_settings
    ?lifecycle_config_arns ~code_repository ~default_resource_spec ()
    : space_settings__jupyter_server_app_settings =
  { lifecycle_config_arns; code_repository; default_resource_spec }

let space_settings__kernel_gateway_app_settings__custom_image
    ?image_version_number ~app_image_config_name ~image_name () :
    space_settings__kernel_gateway_app_settings__custom_image =
  { app_image_config_name; image_name; image_version_number }

let space_settings__kernel_gateway_app_settings__default_resource_spec
    ?instance_type ?lifecycle_config_arn ?sagemaker_image_arn
    ?sagemaker_image_version_alias ?sagemaker_image_version_arn () :
    space_settings__kernel_gateway_app_settings__default_resource_spec
    =
  {
    instance_type;
    lifecycle_config_arn;
    sagemaker_image_arn;
    sagemaker_image_version_alias;
    sagemaker_image_version_arn;
  }

let space_settings__kernel_gateway_app_settings
    ?lifecycle_config_arns ~custom_image ~default_resource_spec () :
    space_settings__kernel_gateway_app_settings =
  { lifecycle_config_arns; custom_image; default_resource_spec }

let space_settings__space_storage_settings__ebs_storage_settings
    ~ebs_volume_size_in_gb () :
    space_settings__space_storage_settings__ebs_storage_settings =
  { ebs_volume_size_in_gb }

let space_settings__space_storage_settings ~ebs_storage_settings () :
    space_settings__space_storage_settings =
  { ebs_storage_settings }

let space_settings ?app_type ~code_editor_app_settings
    ~custom_file_system ~jupyter_lab_app_settings
    ~jupyter_server_app_settings ~kernel_gateway_app_settings
    ~space_storage_settings () : space_settings =
  {
    app_type;
    code_editor_app_settings;
    custom_file_system;
    jupyter_lab_app_settings;
    jupyter_server_app_settings;
    kernel_gateway_app_settings;
    space_storage_settings;
  }

let space_sharing_settings ~sharing_type () : space_sharing_settings
    =
  { sharing_type }

let aws_sagemaker_space ?id ?space_display_name ?tags ?tags_all
    ~domain_id ~space_name ~ownership_settings ~space_settings
    ~space_sharing_settings () : aws_sagemaker_space =
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

type t = {
  arn : string prop;
  domain_id : string prop;
  home_efs_file_system_uid : string prop;
  id : string prop;
  space_display_name : string prop;
  space_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let register ?tf_module ?id ?space_display_name ?tags ?tags_all
    ~domain_id ~space_name ~ownership_settings ~space_settings
    ~space_sharing_settings __resource_id =
  let __resource_type = "aws_sagemaker_space" in
  let __resource =
    aws_sagemaker_space ?id ?space_display_name ?tags ?tags_all
      ~domain_id ~space_name ~ownership_settings ~space_settings
      ~space_sharing_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_space __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domain_id =
         Prop.computed __resource_type __resource_id "domain_id";
       home_efs_file_system_uid =
         Prop.computed __resource_type __resource_id
           "home_efs_file_system_uid";
       id = Prop.computed __resource_type __resource_id "id";
       space_display_name =
         Prop.computed __resource_type __resource_id
           "space_display_name";
       space_name =
         Prop.computed __resource_type __resource_id "space_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
