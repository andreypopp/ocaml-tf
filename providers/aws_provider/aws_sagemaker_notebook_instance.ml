(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_notebook_instance__instance_metadata_service_configuration = {
  minimum_instance_metadata_service_version : string prop option;
      [@option]
      (** minimum_instance_metadata_service_version *)
}
[@@deriving yojson_of]
(** aws_sagemaker_notebook_instance__instance_metadata_service_configuration *)

type aws_sagemaker_notebook_instance = {
  accelerator_types : string prop list option; [@option]
      (** accelerator_types *)
  additional_code_repositories : string prop list option; [@option]
      (** additional_code_repositories *)
  default_code_repository : string prop option; [@option]
      (** default_code_repository *)
  direct_internet_access : string prop option; [@option]
      (** direct_internet_access *)
  id : string prop option; [@option]  (** id *)
  instance_type : string prop;  (** instance_type *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  lifecycle_config_name : string prop option; [@option]
      (** lifecycle_config_name *)
  name : string prop;  (** name *)
  platform_identifier : string prop option; [@option]
      (** platform_identifier *)
  role_arn : string prop;  (** role_arn *)
  root_access : string prop option; [@option]  (** root_access *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_size : float prop option; [@option]  (** volume_size *)
  instance_metadata_service_configuration :
    aws_sagemaker_notebook_instance__instance_metadata_service_configuration
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_notebook_instance *)

let aws_sagemaker_notebook_instance ?accelerator_types
    ?additional_code_repositories ?default_code_repository
    ?direct_internet_access ?id ?kms_key_id ?lifecycle_config_name
    ?platform_identifier ?root_access ?security_groups ?subnet_id
    ?tags ?tags_all ?volume_size ~instance_type ~name ~role_arn
    ~instance_metadata_service_configuration __resource_id =
  let __resource_type = "aws_sagemaker_notebook_instance" in
  let __resource =
    {
      accelerator_types;
      additional_code_repositories;
      default_code_repository;
      direct_internet_access;
      id;
      instance_type;
      kms_key_id;
      lifecycle_config_name;
      name;
      platform_identifier;
      role_arn;
      root_access;
      security_groups;
      subnet_id;
      tags;
      tags_all;
      volume_size;
      instance_metadata_service_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_notebook_instance __resource);
  ()
