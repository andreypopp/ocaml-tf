(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type training_metrics = {
  training_loss : float prop;  (** training_loss *)
}

type validation_metrics = {
  validation_loss : float prop;  (** validation_loss *)
}

type output_data_config

val output_data_config :
  s3_uri:string prop -> unit -> output_data_config

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type training_data_config

val training_data_config :
  s3_uri:string prop -> unit -> training_data_config

type validation_data_config__validator

val validation_data_config__validator :
  s3_uri:string prop -> unit -> validation_data_config__validator

type validation_data_config

val validation_data_config :
  ?validator:validation_data_config__validator list ->
  unit ->
  validation_data_config

type vpc_config

val vpc_config :
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc_config

type aws_bedrock_custom_model

val aws_bedrock_custom_model :
  ?custom_model_kms_key_id:string prop ->
  ?customization_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?output_data_config:output_data_config list ->
  ?timeouts:timeouts ->
  ?training_data_config:training_data_config list ->
  ?validation_data_config:validation_data_config list ->
  ?vpc_config:vpc_config list ->
  base_model_identifier:string prop ->
  custom_model_name:string prop ->
  hyperparameters:string prop Tf_core.assoc ->
  job_name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_bedrock_custom_model

val yojson_of_aws_bedrock_custom_model :
  aws_bedrock_custom_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_model_identifier : string prop;
  custom_model_arn : string prop;
  custom_model_kms_key_id : string prop;
  custom_model_name : string prop;
  customization_type : string prop;
  hyperparameters : string Tf_core.assoc prop;
  id : string prop;
  job_arn : string prop;
  job_name : string prop;
  job_status : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  training_metrics : training_metrics list prop;
  validation_metrics : validation_metrics list prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_model_kms_key_id:string prop ->
  ?customization_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?output_data_config:output_data_config list ->
  ?timeouts:timeouts ->
  ?training_data_config:training_data_config list ->
  ?validation_data_config:validation_data_config list ->
  ?vpc_config:vpc_config list ->
  base_model_identifier:string prop ->
  custom_model_name:string prop ->
  hyperparameters:string prop Tf_core.assoc ->
  job_name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?custom_model_kms_key_id:string prop ->
  ?customization_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?output_data_config:output_data_config list ->
  ?timeouts:timeouts ->
  ?training_data_config:training_data_config list ->
  ?validation_data_config:validation_data_config list ->
  ?vpc_config:vpc_config list ->
  base_model_identifier:string prop ->
  custom_model_name:string prop ->
  hyperparameters:string prop Tf_core.assoc ->
  job_name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
