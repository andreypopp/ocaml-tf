(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config__large_data_delivery_s3_config

type aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config

type aws_bedrock_model_invocation_logging_configuration__logging_config__s3_config

type aws_bedrock_model_invocation_logging_configuration__logging_config

type aws_bedrock_model_invocation_logging_configuration
type t = private { id : string prop }

val aws_bedrock_model_invocation_logging_configuration :
  logging_config:
    aws_bedrock_model_invocation_logging_configuration__logging_config ->
  string ->
  t
