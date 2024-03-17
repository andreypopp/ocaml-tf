(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_notebook_instance__instance_metadata_service_configuration = {
  minimum_instance_metadata_service_version : string option; [@option]
      (** minimum_instance_metadata_service_version *)
}
[@@deriving yojson_of]
(** aws_sagemaker_notebook_instance__instance_metadata_service_configuration *)

type aws_sagemaker_notebook_instance = {
  accelerator_types : string list option; [@option]
      (** accelerator_types *)
  additional_code_repositories : string list option; [@option]
      (** additional_code_repositories *)
  default_code_repository : string option; [@option]
      (** default_code_repository *)
  direct_internet_access : string option; [@option]
      (** direct_internet_access *)
  instance_type : string;  (** instance_type *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  lifecycle_config_name : string option; [@option]
      (** lifecycle_config_name *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  root_access : string option; [@option]  (** root_access *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  volume_size : float option; [@option]  (** volume_size *)
  instance_metadata_service_configuration :
    aws_sagemaker_notebook_instance__instance_metadata_service_configuration
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_notebook_instance *)

let aws_sagemaker_notebook_instance ?accelerator_types
    ?additional_code_repositories ?default_code_repository
    ?direct_internet_access ?kms_key_id ?lifecycle_config_name
    ?root_access ?subnet_id ?tags ?volume_size ~instance_type ~name
    ~role_arn ~instance_metadata_service_configuration __resource_id
    =
  let __resource_type = "aws_sagemaker_notebook_instance" in
  let __resource =
    {
      accelerator_types;
      additional_code_repositories;
      default_code_repository;
      direct_internet_access;
      instance_type;
      kms_key_id;
      lifecycle_config_name;
      name;
      role_arn;
      root_access;
      subnet_id;
      tags;
      volume_size;
      instance_metadata_service_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_notebook_instance __resource);
  ()
