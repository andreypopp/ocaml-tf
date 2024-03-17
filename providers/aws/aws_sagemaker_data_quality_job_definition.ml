(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_data_quality_job_definition__data_quality_app_specification = {
  environment : (string * string prop) list option; [@option]
      (** environment *)
  image_uri : string prop;  (** image_uri *)
  post_analytics_processor_source_uri : string prop option; [@option]
      (** post_analytics_processor_source_uri *)
  record_preprocessor_source_uri : string prop option; [@option]
      (** record_preprocessor_source_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_app_specification *)

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__constraints_resource = {
  s3_uri : string prop option; [@option]  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__constraints_resource *)

type aws_sagemaker_data_quality_job_definition__data_quality_baseline_config__statistics_resource = {
  s3_uri : string prop option; [@option]  (** s3_uri *)
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
  header : bool prop option; [@option]  (** header *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__csv *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format__json = {
  line : bool prop option; [@option]  (** line *)
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
  data_captured_destination_s3_uri : string prop;
      (** data_captured_destination_s3_uri *)
  local_path : string prop option; [@option]  (** local_path *)
  s3_data_distribution_type : string prop option; [@option]
      (** s3_data_distribution_type *)
  s3_input_mode : string prop option; [@option]  (** s3_input_mode *)
  dataset_format :
    aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input__dataset_format
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_input__batch_transform_input *)

type aws_sagemaker_data_quality_job_definition__data_quality_job_input__endpoint_input = {
  endpoint_name : string prop;  (** endpoint_name *)
  local_path : string prop option; [@option]  (** local_path *)
  s3_data_distribution_type : string prop option; [@option]
      (** s3_data_distribution_type *)
  s3_input_mode : string prop option; [@option]  (** s3_input_mode *)
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
  local_path : string prop option; [@option]  (** local_path *)
  s3_upload_mode : string prop option; [@option]
      (** s3_upload_mode *)
  s3_uri : string prop;  (** s3_uri *)
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
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  monitoring_outputs :
    aws_sagemaker_data_quality_job_definition__data_quality_job_output_config__monitoring_outputs
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__data_quality_job_output_config *)

type aws_sagemaker_data_quality_job_definition__job_resources__cluster_config = {
  instance_count : float prop;  (** instance_count *)
  instance_type : string prop;  (** instance_type *)
  volume_kms_key_id : string prop option; [@option]
      (** volume_kms_key_id *)
  volume_size_in_gb : float prop;  (** volume_size_in_gb *)
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
  security_group_ids : string prop list;  (** security_group_ids *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__network_config__vpc_config *)

type aws_sagemaker_data_quality_job_definition__network_config = {
  enable_inter_container_traffic_encryption : bool prop option;
      [@option]
      (** enable_inter_container_traffic_encryption *)
  enable_network_isolation : bool prop option; [@option]
      (** enable_network_isolation *)
  vpc_config :
    aws_sagemaker_data_quality_job_definition__network_config__vpc_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__network_config *)

type aws_sagemaker_data_quality_job_definition__stopping_condition = {
  max_runtime_in_seconds : float prop option; [@option]
      (** max_runtime_in_seconds *)
}
[@@deriving yojson_of]
(** aws_sagemaker_data_quality_job_definition__stopping_condition *)

type aws_sagemaker_data_quality_job_definition = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sagemaker_data_quality_job_definition ?id ?name ?tags
    ?tags_all ~role_arn ~data_quality_app_specification
    ~data_quality_baseline_config ~data_quality_job_input
    ~data_quality_job_output_config ~job_resources ~network_config
    ~stopping_condition __resource_id =
  let __resource_type =
    "aws_sagemaker_data_quality_job_definition"
  in
  let __resource =
    ({
       id;
       name;
       role_arn;
       tags;
       tags_all;
       data_quality_app_specification;
       data_quality_baseline_config;
       data_quality_job_input;
       data_quality_job_output_config;
       job_resources;
       network_config;
       stopping_condition;
     }
      : aws_sagemaker_data_quality_job_definition)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_data_quality_job_definition __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
