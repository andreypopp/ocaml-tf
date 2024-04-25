(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_quality_app_specification

val data_quality_app_specification :
  ?environment:(string * string prop) list ->
  ?post_analytics_processor_source_uri:string prop ->
  ?record_preprocessor_source_uri:string prop ->
  image_uri:string prop ->
  unit ->
  data_quality_app_specification

type data_quality_baseline_config__constraints_resource

val data_quality_baseline_config__constraints_resource :
  ?s3_uri:string prop ->
  unit ->
  data_quality_baseline_config__constraints_resource

type data_quality_baseline_config__statistics_resource

val data_quality_baseline_config__statistics_resource :
  ?s3_uri:string prop ->
  unit ->
  data_quality_baseline_config__statistics_resource

type data_quality_baseline_config

val data_quality_baseline_config :
  ?constraints_resource:
    data_quality_baseline_config__constraints_resource list ->
  ?statistics_resource:
    data_quality_baseline_config__statistics_resource list ->
  unit ->
  data_quality_baseline_config

type data_quality_job_input__batch_transform_input__dataset_format__csv

val data_quality_job_input__batch_transform_input__dataset_format__csv :
  ?header:bool prop ->
  unit ->
  data_quality_job_input__batch_transform_input__dataset_format__csv

type data_quality_job_input__batch_transform_input__dataset_format__json

val data_quality_job_input__batch_transform_input__dataset_format__json :
  ?line:bool prop ->
  unit ->
  data_quality_job_input__batch_transform_input__dataset_format__json

type data_quality_job_input__batch_transform_input__dataset_format

val data_quality_job_input__batch_transform_input__dataset_format :
  ?csv:
    data_quality_job_input__batch_transform_input__dataset_format__csv
    list ->
  ?json:
    data_quality_job_input__batch_transform_input__dataset_format__json
    list ->
  unit ->
  data_quality_job_input__batch_transform_input__dataset_format

type data_quality_job_input__batch_transform_input

val data_quality_job_input__batch_transform_input :
  ?local_path:string prop ->
  ?s3_data_distribution_type:string prop ->
  ?s3_input_mode:string prop ->
  data_captured_destination_s3_uri:string prop ->
  dataset_format:
    data_quality_job_input__batch_transform_input__dataset_format
    list ->
  unit ->
  data_quality_job_input__batch_transform_input

type data_quality_job_input__endpoint_input

val data_quality_job_input__endpoint_input :
  ?local_path:string prop ->
  ?s3_data_distribution_type:string prop ->
  ?s3_input_mode:string prop ->
  endpoint_name:string prop ->
  unit ->
  data_quality_job_input__endpoint_input

type data_quality_job_input

val data_quality_job_input :
  ?batch_transform_input:
    data_quality_job_input__batch_transform_input list ->
  ?endpoint_input:data_quality_job_input__endpoint_input list ->
  unit ->
  data_quality_job_input

type data_quality_job_output_config__monitoring_outputs__s3_output

val data_quality_job_output_config__monitoring_outputs__s3_output :
  ?local_path:string prop ->
  ?s3_upload_mode:string prop ->
  s3_uri:string prop ->
  unit ->
  data_quality_job_output_config__monitoring_outputs__s3_output

type data_quality_job_output_config__monitoring_outputs

val data_quality_job_output_config__monitoring_outputs :
  s3_output:
    data_quality_job_output_config__monitoring_outputs__s3_output
    list ->
  unit ->
  data_quality_job_output_config__monitoring_outputs

type data_quality_job_output_config

val data_quality_job_output_config :
  ?kms_key_id:string prop ->
  monitoring_outputs:
    data_quality_job_output_config__monitoring_outputs list ->
  unit ->
  data_quality_job_output_config

type job_resources__cluster_config

val job_resources__cluster_config :
  ?volume_kms_key_id:string prop ->
  instance_count:float prop ->
  instance_type:string prop ->
  volume_size_in_gb:float prop ->
  unit ->
  job_resources__cluster_config

type job_resources

val job_resources :
  cluster_config:job_resources__cluster_config list ->
  unit ->
  job_resources

type network_config__vpc_config

val network_config__vpc_config :
  security_group_ids:string prop list ->
  subnets:string prop list ->
  unit ->
  network_config__vpc_config

type network_config

val network_config :
  ?enable_inter_container_traffic_encryption:bool prop ->
  ?enable_network_isolation:bool prop ->
  ?vpc_config:network_config__vpc_config list ->
  unit ->
  network_config

type stopping_condition

val stopping_condition :
  ?max_runtime_in_seconds:float prop -> unit -> stopping_condition

type aws_sagemaker_data_quality_job_definition

val aws_sagemaker_data_quality_job_definition :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?data_quality_baseline_config:data_quality_baseline_config list ->
  ?network_config:network_config list ->
  ?stopping_condition:stopping_condition list ->
  role_arn:string prop ->
  data_quality_app_specification:data_quality_app_specification list ->
  data_quality_job_input:data_quality_job_input list ->
  data_quality_job_output_config:data_quality_job_output_config list ->
  job_resources:job_resources list ->
  unit ->
  aws_sagemaker_data_quality_job_definition

val yojson_of_aws_sagemaker_data_quality_job_definition :
  aws_sagemaker_data_quality_job_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?data_quality_baseline_config:data_quality_baseline_config list ->
  ?network_config:network_config list ->
  ?stopping_condition:stopping_condition list ->
  role_arn:string prop ->
  data_quality_app_specification:data_quality_app_specification list ->
  data_quality_job_input:data_quality_job_input list ->
  data_quality_job_output_config:data_quality_job_output_config list ->
  job_resources:job_resources list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?data_quality_baseline_config:data_quality_baseline_config list ->
  ?network_config:network_config list ->
  ?stopping_condition:stopping_condition list ->
  role_arn:string prop ->
  data_quality_app_specification:data_quality_app_specification list ->
  data_quality_job_input:data_quality_job_input list ->
  data_quality_job_output_config:data_quality_job_output_config list ->
  job_resources:job_resources list ->
  string ->
  t Tf_core.resource
