(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_model__container__image_config__repository_auth_config = {
  repository_credentials_provider_arn : string;
      (** repository_credentials_provider_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model__container__image_config__repository_auth_config *)

type aws_sagemaker_model__container__image_config = {
  repository_access_mode : string;  (** repository_access_mode *)
  repository_auth_config :
    aws_sagemaker_model__container__image_config__repository_auth_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model__container__image_config *)

type aws_sagemaker_model__container__model_data_source__s3_data_source = {
  compression_type : string;  (** compression_type *)
  s3_data_type : string;  (** s3_data_type *)
  s3_uri : string;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model__container__model_data_source__s3_data_source *)

type aws_sagemaker_model__container__model_data_source = {
  s3_data_source :
    aws_sagemaker_model__container__model_data_source__s3_data_source
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model__container__model_data_source *)

type aws_sagemaker_model__container = {
  container_hostname : string option; [@option]
      (** container_hostname *)
  environment : (string * string) list option; [@option]
      (** environment *)
  image : string option; [@option]  (** image *)
  mode : string option; [@option]  (** mode *)
  model_data_url : string option; [@option]  (** model_data_url *)
  model_package_name : string option; [@option]
      (** model_package_name *)
  image_config : aws_sagemaker_model__container__image_config list;
  model_data_source :
    aws_sagemaker_model__container__model_data_source list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model__container *)

type aws_sagemaker_model__inference_execution_config = {
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model__inference_execution_config *)

type aws_sagemaker_model__primary_container__image_config__repository_auth_config = {
  repository_credentials_provider_arn : string;
      (** repository_credentials_provider_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model__primary_container__image_config__repository_auth_config *)

type aws_sagemaker_model__primary_container__image_config = {
  repository_access_mode : string;  (** repository_access_mode *)
  repository_auth_config :
    aws_sagemaker_model__primary_container__image_config__repository_auth_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model__primary_container__image_config *)

type aws_sagemaker_model__primary_container__model_data_source__s3_data_source = {
  compression_type : string;  (** compression_type *)
  s3_data_type : string;  (** s3_data_type *)
  s3_uri : string;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model__primary_container__model_data_source__s3_data_source *)

type aws_sagemaker_model__primary_container__model_data_source = {
  s3_data_source :
    aws_sagemaker_model__primary_container__model_data_source__s3_data_source
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model__primary_container__model_data_source *)

type aws_sagemaker_model__primary_container = {
  container_hostname : string option; [@option]
      (** container_hostname *)
  environment : (string * string) list option; [@option]
      (** environment *)
  image : string option; [@option]  (** image *)
  mode : string option; [@option]  (** mode *)
  model_data_url : string option; [@option]  (** model_data_url *)
  model_package_name : string option; [@option]
      (** model_package_name *)
  image_config :
    aws_sagemaker_model__primary_container__image_config list;
  model_data_source :
    aws_sagemaker_model__primary_container__model_data_source list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model__primary_container *)

type aws_sagemaker_model__vpc_config = {
  security_group_ids : string list;  (** security_group_ids *)
  subnets : string list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_sagemaker_model__vpc_config *)

type aws_sagemaker_model = {
  enable_network_isolation : bool option; [@option]
      (** enable_network_isolation *)
  execution_role_arn : string;  (** execution_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  container : aws_sagemaker_model__container list;
  inference_execution_config :
    aws_sagemaker_model__inference_execution_config list;
  primary_container : aws_sagemaker_model__primary_container list;
  vpc_config : aws_sagemaker_model__vpc_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_model *)

let aws_sagemaker_model ?enable_network_isolation ?tags
    ~execution_role_arn ~container ~inference_execution_config
    ~primary_container ~vpc_config __resource_id =
  let __resource_type = "aws_sagemaker_model" in
  let __resource =
    {
      enable_network_isolation;
      execution_role_arn;
      tags;
      container;
      inference_execution_config;
      primary_container;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_model __resource);
  ()