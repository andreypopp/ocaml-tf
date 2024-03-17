(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_endpoint_configuration__async_inference_config__client_config = {
  max_concurrent_invocations_per_instance : float prop option;
      [@option]
      (** max_concurrent_invocations_per_instance *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__async_inference_config__client_config *)

type aws_sagemaker_endpoint_configuration__async_inference_config__output_config__notification_config = {
  error_topic : string prop option; [@option]  (** error_topic *)
  include_inference_response_in : string prop list option; [@option]
      (** include_inference_response_in *)
  success_topic : string prop option; [@option]  (** success_topic *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__async_inference_config__output_config__notification_config *)

type aws_sagemaker_endpoint_configuration__async_inference_config__output_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  s3_failure_path : string prop option; [@option]
      (** s3_failure_path *)
  s3_output_path : string prop;  (** s3_output_path *)
  notification_config :
    aws_sagemaker_endpoint_configuration__async_inference_config__output_config__notification_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__async_inference_config__output_config *)

type aws_sagemaker_endpoint_configuration__async_inference_config = {
  client_config :
    aws_sagemaker_endpoint_configuration__async_inference_config__client_config
    list;
  output_config :
    aws_sagemaker_endpoint_configuration__async_inference_config__output_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__async_inference_config *)

type aws_sagemaker_endpoint_configuration__data_capture_config__capture_content_type_header = {
  csv_content_types : string prop list option; [@option]
      (** csv_content_types *)
  json_content_types : string prop list option; [@option]
      (** json_content_types *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__data_capture_config__capture_content_type_header *)

type aws_sagemaker_endpoint_configuration__data_capture_config__capture_options = {
  capture_mode : string prop;  (** capture_mode *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__data_capture_config__capture_options *)

type aws_sagemaker_endpoint_configuration__data_capture_config = {
  destination_s3_uri : string prop;  (** destination_s3_uri *)
  enable_capture : bool prop option; [@option]  (** enable_capture *)
  initial_sampling_percentage : float prop;
      (** initial_sampling_percentage *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  capture_content_type_header :
    aws_sagemaker_endpoint_configuration__data_capture_config__capture_content_type_header
    list;
  capture_options :
    aws_sagemaker_endpoint_configuration__data_capture_config__capture_options
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__data_capture_config *)

type aws_sagemaker_endpoint_configuration__production_variants__core_dump_config = {
  destination_s3_uri : string prop;  (** destination_s3_uri *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__production_variants__core_dump_config *)

type aws_sagemaker_endpoint_configuration__production_variants__routing_config = {
  routing_strategy : string prop;  (** routing_strategy *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__production_variants__routing_config *)

type aws_sagemaker_endpoint_configuration__production_variants__serverless_config = {
  max_concurrency : float prop;  (** max_concurrency *)
  memory_size_in_mb : float prop;  (** memory_size_in_mb *)
  provisioned_concurrency : float prop option; [@option]
      (** provisioned_concurrency *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__production_variants__serverless_config *)

type aws_sagemaker_endpoint_configuration__production_variants = {
  accelerator_type : string prop option; [@option]
      (** accelerator_type *)
  container_startup_health_check_timeout_in_seconds :
    float prop option;
      [@option]
      (** container_startup_health_check_timeout_in_seconds *)
  enable_ssm_access : bool prop option; [@option]
      (** enable_ssm_access *)
  initial_instance_count : float prop option; [@option]
      (** initial_instance_count *)
  initial_variant_weight : float prop option; [@option]
      (** initial_variant_weight *)
  instance_type : string prop option; [@option]  (** instance_type *)
  model_data_download_timeout_in_seconds : float prop option;
      [@option]
      (** model_data_download_timeout_in_seconds *)
  model_name : string prop;  (** model_name *)
  variant_name : string prop option; [@option]  (** variant_name *)
  volume_size_in_gb : float prop option; [@option]
      (** volume_size_in_gb *)
  core_dump_config :
    aws_sagemaker_endpoint_configuration__production_variants__core_dump_config
    list;
  routing_config :
    aws_sagemaker_endpoint_configuration__production_variants__routing_config
    list;
  serverless_config :
    aws_sagemaker_endpoint_configuration__production_variants__serverless_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__production_variants *)

type aws_sagemaker_endpoint_configuration__shadow_production_variants__core_dump_config = {
  destination_s3_uri : string prop;  (** destination_s3_uri *)
  kms_key_id : string prop;  (** kms_key_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__shadow_production_variants__core_dump_config *)

type aws_sagemaker_endpoint_configuration__shadow_production_variants__routing_config = {
  routing_strategy : string prop;  (** routing_strategy *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__shadow_production_variants__routing_config *)

type aws_sagemaker_endpoint_configuration__shadow_production_variants__serverless_config = {
  max_concurrency : float prop;  (** max_concurrency *)
  memory_size_in_mb : float prop;  (** memory_size_in_mb *)
  provisioned_concurrency : float prop option; [@option]
      (** provisioned_concurrency *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__shadow_production_variants__serverless_config *)

type aws_sagemaker_endpoint_configuration__shadow_production_variants = {
  accelerator_type : string prop option; [@option]
      (** accelerator_type *)
  container_startup_health_check_timeout_in_seconds :
    float prop option;
      [@option]
      (** container_startup_health_check_timeout_in_seconds *)
  enable_ssm_access : bool prop option; [@option]
      (** enable_ssm_access *)
  initial_instance_count : float prop option; [@option]
      (** initial_instance_count *)
  initial_variant_weight : float prop option; [@option]
      (** initial_variant_weight *)
  instance_type : string prop option; [@option]  (** instance_type *)
  model_data_download_timeout_in_seconds : float prop option;
      [@option]
      (** model_data_download_timeout_in_seconds *)
  model_name : string prop;  (** model_name *)
  variant_name : string prop option; [@option]  (** variant_name *)
  volume_size_in_gb : float prop option; [@option]
      (** volume_size_in_gb *)
  core_dump_config :
    aws_sagemaker_endpoint_configuration__shadow_production_variants__core_dump_config
    list;
  routing_config :
    aws_sagemaker_endpoint_configuration__shadow_production_variants__routing_config
    list;
  serverless_config :
    aws_sagemaker_endpoint_configuration__shadow_production_variants__serverless_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration__shadow_production_variants *)

type aws_sagemaker_endpoint_configuration = {
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  async_inference_config :
    aws_sagemaker_endpoint_configuration__async_inference_config list;
  data_capture_config :
    aws_sagemaker_endpoint_configuration__data_capture_config list;
  production_variants :
    aws_sagemaker_endpoint_configuration__production_variants list;
  shadow_production_variants :
    aws_sagemaker_endpoint_configuration__shadow_production_variants
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint_configuration *)

let aws_sagemaker_endpoint_configuration ?id ?kms_key_arn ?name
    ?name_prefix ?tags ?tags_all ~async_inference_config
    ~data_capture_config ~production_variants
    ~shadow_production_variants __resource_id =
  let __resource_type = "aws_sagemaker_endpoint_configuration" in
  let __resource =
    {
      id;
      kms_key_arn;
      name;
      name_prefix;
      tags;
      tags_all;
      async_inference_config;
      data_capture_config;
      production_variants;
      shadow_production_variants;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_endpoint_configuration __resource);
  ()
