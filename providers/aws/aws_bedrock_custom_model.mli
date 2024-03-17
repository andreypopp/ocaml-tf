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

type t = private {
  base_model_identifier : string prop;
  custom_model_arn : string prop;
  custom_model_kms_key_id : string prop;
  custom_model_name : string prop;
  customization_type : string prop;
  hyperparameters : (string * string) list prop;
  id : string prop;
  job_arn : string prop;
  job_name : string prop;
  job_status : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  training_metrics :
    aws_bedrock_custom_model__training_metrics list prop;
  validation_metrics :
    aws_bedrock_custom_model__validation_metrics list prop;
}

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
  t
