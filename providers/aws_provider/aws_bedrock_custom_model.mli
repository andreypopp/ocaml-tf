(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_bedrock_custom_model__output_data_config
type aws_bedrock_custom_model__timeouts
type aws_bedrock_custom_model__training_data_config
type aws_bedrock_custom_model__validation_data_config__validator
type aws_bedrock_custom_model__validation_data_config
type aws_bedrock_custom_model__vpc_config

type aws_bedrock_custom_model__training_metrics = {
  training_loss : float;  (** training_loss *)
}

type aws_bedrock_custom_model__validation_metrics = {
  validation_loss : float;  (** validation_loss *)
}

type aws_bedrock_custom_model

val aws_bedrock_custom_model :
  ?custom_model_kms_key_id:string ->
  ?customization_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_bedrock_custom_model__timeouts ->
  base_model_identifier:string ->
  custom_model_name:string ->
  hyperparameters:(string * string) list ->
  job_name:string ->
  role_arn:string ->
  output_data_config:
    aws_bedrock_custom_model__output_data_config list ->
  training_data_config:
    aws_bedrock_custom_model__training_data_config list ->
  validation_data_config:
    aws_bedrock_custom_model__validation_data_config list ->
  vpc_config:aws_bedrock_custom_model__vpc_config list ->
  string ->
  unit
