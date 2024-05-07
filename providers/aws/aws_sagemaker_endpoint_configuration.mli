(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type async_inference_config__client_config

val async_inference_config__client_config :
  ?max_concurrent_invocations_per_instance:float prop ->
  unit ->
  async_inference_config__client_config

type async_inference_config__output_config__notification_config

val async_inference_config__output_config__notification_config :
  ?error_topic:string prop ->
  ?include_inference_response_in:string prop list ->
  ?success_topic:string prop ->
  unit ->
  async_inference_config__output_config__notification_config

type async_inference_config__output_config

val async_inference_config__output_config :
  ?kms_key_id:string prop ->
  ?s3_failure_path:string prop ->
  ?notification_config:
    async_inference_config__output_config__notification_config list ->
  s3_output_path:string prop ->
  unit ->
  async_inference_config__output_config

type async_inference_config

val async_inference_config :
  ?client_config:async_inference_config__client_config list ->
  output_config:async_inference_config__output_config list ->
  unit ->
  async_inference_config

type data_capture_config__capture_content_type_header

val data_capture_config__capture_content_type_header :
  ?csv_content_types:string prop list ->
  ?json_content_types:string prop list ->
  unit ->
  data_capture_config__capture_content_type_header

type data_capture_config__capture_options

val data_capture_config__capture_options :
  capture_mode:string prop ->
  unit ->
  data_capture_config__capture_options

type data_capture_config

val data_capture_config :
  ?enable_capture:bool prop ->
  ?kms_key_id:string prop ->
  ?capture_content_type_header:
    data_capture_config__capture_content_type_header list ->
  destination_s3_uri:string prop ->
  initial_sampling_percentage:float prop ->
  capture_options:data_capture_config__capture_options list ->
  unit ->
  data_capture_config

type production_variants__core_dump_config

val production_variants__core_dump_config :
  ?kms_key_id:string prop ->
  destination_s3_uri:string prop ->
  unit ->
  production_variants__core_dump_config

type production_variants__routing_config

val production_variants__routing_config :
  routing_strategy:string prop ->
  unit ->
  production_variants__routing_config

type production_variants__serverless_config

val production_variants__serverless_config :
  ?provisioned_concurrency:float prop ->
  max_concurrency:float prop ->
  memory_size_in_mb:float prop ->
  unit ->
  production_variants__serverless_config

type production_variants

val production_variants :
  ?accelerator_type:string prop ->
  ?container_startup_health_check_timeout_in_seconds:float prop ->
  ?enable_ssm_access:bool prop ->
  ?initial_instance_count:float prop ->
  ?initial_variant_weight:float prop ->
  ?instance_type:string prop ->
  ?model_data_download_timeout_in_seconds:float prop ->
  ?variant_name:string prop ->
  ?volume_size_in_gb:float prop ->
  ?core_dump_config:production_variants__core_dump_config list ->
  ?routing_config:production_variants__routing_config list ->
  ?serverless_config:production_variants__serverless_config list ->
  model_name:string prop ->
  unit ->
  production_variants

type shadow_production_variants__core_dump_config

val shadow_production_variants__core_dump_config :
  destination_s3_uri:string prop ->
  kms_key_id:string prop ->
  unit ->
  shadow_production_variants__core_dump_config

type shadow_production_variants__routing_config

val shadow_production_variants__routing_config :
  routing_strategy:string prop ->
  unit ->
  shadow_production_variants__routing_config

type shadow_production_variants__serverless_config

val shadow_production_variants__serverless_config :
  ?provisioned_concurrency:float prop ->
  max_concurrency:float prop ->
  memory_size_in_mb:float prop ->
  unit ->
  shadow_production_variants__serverless_config

type shadow_production_variants

val shadow_production_variants :
  ?accelerator_type:string prop ->
  ?container_startup_health_check_timeout_in_seconds:float prop ->
  ?enable_ssm_access:bool prop ->
  ?initial_instance_count:float prop ->
  ?initial_variant_weight:float prop ->
  ?instance_type:string prop ->
  ?model_data_download_timeout_in_seconds:float prop ->
  ?variant_name:string prop ->
  ?volume_size_in_gb:float prop ->
  ?core_dump_config:shadow_production_variants__core_dump_config list ->
  ?routing_config:shadow_production_variants__routing_config list ->
  ?serverless_config:
    shadow_production_variants__serverless_config list ->
  model_name:string prop ->
  unit ->
  shadow_production_variants

type aws_sagemaker_endpoint_configuration

val aws_sagemaker_endpoint_configuration :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?async_inference_config:async_inference_config list ->
  ?data_capture_config:data_capture_config list ->
  ?shadow_production_variants:shadow_production_variants list ->
  production_variants:production_variants list ->
  unit ->
  aws_sagemaker_endpoint_configuration

val yojson_of_aws_sagemaker_endpoint_configuration :
  aws_sagemaker_endpoint_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?async_inference_config:async_inference_config list ->
  ?data_capture_config:data_capture_config list ->
  ?shadow_production_variants:shadow_production_variants list ->
  production_variants:production_variants list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?async_inference_config:async_inference_config list ->
  ?data_capture_config:data_capture_config list ->
  ?shadow_production_variants:shadow_production_variants list ->
  production_variants:production_variants list ->
  string ->
  t Tf_core.resource
