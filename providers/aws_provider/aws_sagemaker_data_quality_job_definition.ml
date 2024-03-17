(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_data_quality_job_definition__data_quality_app_specification = {
  environment : (string * string) list option; [@option]
      (** environment *)
  image_uri : string;  (** image_uri *)
  post_analytics_processor_source_uri : string option; [@option]
      (** post_analytics_processor_source_uri *)
  record_preprocessor_source_uri : string option; [@option]
      (** record_preprocessor_source_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_app_specification *)

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__constraints_resource = {
  s3_uri : string option; [@option]  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__constraints_resource *)

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__statistics_resource = {
  s3_uri : string option; [@option]  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__statistics_resource *)

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config = {
  constraints_resource :
    aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__constraints_resource
    list;
  statistics_resource :
    aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__statistics_resource
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_baseline_config *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__csv = {
  header : bool option; [@option]  (** header *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__csv *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__json = {
  line : bool option; [@option]  (** line *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__json *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format = {
  csv :
    aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__csv
    list;
  json :
    aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__json
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input = {
  data_captured_destination_s3_uri : string;
      (** data_captured_destination_s3_uri *)
  local_path : string option; [@option]  (** local_path *)
  s3_data_distribution_type : string option; [@option]
      (** s3_data_distribution_type *)
  s3_input_mode : string option; [@option]  (** s3_input_mode *)
  dataset_format :
    aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__endpoint_input = {
  endpoint_name : string;  (** endpoint_name *)
  local_path : string option; [@option]  (** local_path *)
  s3_data_distribution_type : string option; [@option]
      (** s3_data_distribution_type *)
  s3_input_mode : string option; [@option]  (** s3_input_mode *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input__endpoint_input *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input = {
  batch_transform_input :
    aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input
    list;
  endpoint_input :
    aws_sagemaker_data_quality_job_definition__data_quality_job_input__endpoint_input
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs__s3_output = {
  local_path : string option; [@option]  (** local_path *)
  s3_upload_mode : string option; [@option]  (** s3_upload_mode *)
  s3_uri : string;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs__s3_output *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs = {
  s3_output :
    aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs__s3_output
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_output_config = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  monitoring_outputs :
    aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_output_config *)

type aws_sagemaker_data_quality_job_definition__job_resources__cluster_config = {
  instance_count : float;  (** instance_count *)
  instance_type : string;  (** instance_type *)
  volume_kms_key_id : string option; [@option]
      (** volume_kms_key_id *)
  volume_size_in_gb : float;  (** volume_size_in_gb *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__job_resources__cluster_config *)

type aws_sagemaker_data_quality_job_definition__job_resources = {
  cluster_config :
    aws_sagemaker_data_quality_job_definition__job_resources__cluster_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__job_resources *)

type aws_sagemaker_data_quality_job_definition__network_config__vpc_config = {
  security_group_ids : string list;  (** security_group_ids *)
  subnets : string list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__network_config__vpc_config *)

type aws_sagemaker_data_quality_job_definition__network_config = {
  enable_inter_container_traffic_encryption : bool option; [@option]
      (** enable_inter_container_traffic_encryption *)
  enable_network_isolation : bool option; [@option]
      (** enable_network_isolation *)
  vpc_config :
    aws_sagemaker_data_quality_job_definition__network_config__vpc_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__network_config *)

type aws_sagemaker_data_quality_job_definition__stopping_condition = {
  max_runtime_in_seconds : float option; [@option]
      (** max_runtime_in_seconds *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__stopping_condition *)

type aws_sagemaker_data_quality_job_definition = {
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  data_quality_app_specification :
    aws_sagemaker_data_quality_job_definition__data_quality_app_specification
    list;
  data_quality_baseline_config :
    aws_sagemaker_data_quality_job_definition__data_quality_baseline_config
    list;
  data_quality_job_input :
    aws_sagemaker_data_quality_job_definition__data_quality_job_input
    list;
  data_quality_job_output_config :
    aws_sagemaker_data_quality_job_definition__data_quality_job_output_config
    list;
  job_resources :
    aws_sagemaker_data_quality_job_definition__job_resources list;
  network_config :
    aws_sagemaker_data_quality_job_definition__network_config list;
  stopping_condition :
    aws_sagemaker_data_quality_job_definition__stopping_condition
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition *)

let aws_sagemaker_data_quality_job_definition ?tags ~role_arn
    ~data_quality_app_specification ~data_quality_baseline_config
    ~data_quality_job_input ~data_quality_job_output_config
    ~job_resources ~network_config ~stopping_condition __resource_id
    =
  let __resource_type =
    "aws_sagemaker_data_quality_job_definition"
  in
  let __resource =
    {
      role_arn;
      tags;
      data_quality_app_specification;
      data_quality_baseline_config;
      data_quality_job_input;
      data_quality_job_output_config;
      job_resources;
      network_config;
      stopping_condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_data_quality_job_definition __resource);
  ()
