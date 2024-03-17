(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_bedrock_custom_model__output_data_config
type aws_bedrock_custom_model__timeouts
type aws_bedrock_custom_model__training_data_config
type aws_bedrock_custom_model__validation_data_config__validator
type aws_bedrock_custom_model__validation_data_config
type aws_bedrock_custom_model__vpc_config

type aws_bedrock_custom_model__training_metrics = {
  training_loss : float prop;  (** training_loss *)
}

type aws_bedrock_custom_model__validation_metrics = {
  validation_loss : float prop;  (** validation_loss *)
}

type aws_bedrock_custom_model

val aws_bedrock_custom_model :
  ?custom_model_kms_key_id:string prop ->
  ?customization_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_bedrock_custom_model__timeouts ->
  base_model_identifier:string prop ->
  custom_model_name:string prop ->
  hyperparameters:(string * string prop) list ->
  job_name:string prop ->
  role_arn:string prop ->
  output_data_config:
    aws_bedrock_custom_model__output_data_config list ->
  training_data_config:
    aws_bedrock_custom_model__training_data_config list ->
  validation_data_config:
    aws_bedrock_custom_model__validation_data_config list ->
  vpc_config:aws_bedrock_custom_model__vpc_config list ->
  string ->
  unit
