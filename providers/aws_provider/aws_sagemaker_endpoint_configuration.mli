(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_endpoint_configuration__async_inference_config__client_config

type aws_sagemaker_endpoint_configuration__async_inference_config__output_config__notification_config

type aws_sagemaker_endpoint_configuration__async_inference_config__output_config

type aws_sagemaker_endpoint_configuration__async_inference_config

type aws_sagemaker_endpoint_configuration__data_capture_config__capture_content_type_header

type aws_sagemaker_endpoint_configuration__data_capture_config__capture_options

type aws_sagemaker_endpoint_configuration__data_capture_config

type aws_sagemaker_endpoint_configuration__production_variants__core_dump_config

type aws_sagemaker_endpoint_configuration__production_variants__routing_config

type aws_sagemaker_endpoint_configuration__production_variants__serverless_config

type aws_sagemaker_endpoint_configuration__production_variants

type aws_sagemaker_endpoint_configuration__shadow_production_variants__core_dump_config

type aws_sagemaker_endpoint_configuration__shadow_production_variants__routing_config

type aws_sagemaker_endpoint_configuration__shadow_production_variants__serverless_config

type aws_sagemaker_endpoint_configuration__shadow_production_variants
type aws_sagemaker_endpoint_configuration

type t = private {
  arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sagemaker_endpoint_configuration :
  ?id:string prop ->
  ?kms_key_arn:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  async_inference_config:
    aws_sagemaker_endpoint_configuration__async_inference_config list ->
  data_capture_config:
    aws_sagemaker_endpoint_configuration__data_capture_config list ->
  production_variants:
    aws_sagemaker_endpoint_configuration__production_variants list ->
  shadow_production_variants:
    aws_sagemaker_endpoint_configuration__shadow_production_variants
    list ->
  string ->
  t
