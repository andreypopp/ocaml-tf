(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type output_data_config = { s3_uri : string prop  (** s3_uri *) }
type training_data_config = { s3_uri : string prop  (** s3_uri *) }

type training_metrics = {
  training_loss : float prop;  (** training_loss *)
}

type validation_data_config__validator = {
  s3_uri : string prop;  (** s3_uri *)
}

type validation_data_config = {
  validator : validation_data_config__validator list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** validator *)
}

type validation_metrics = {
  validation_loss : float prop;  (** validation_loss *)
}

type aws_bedrock_custom_model

val aws_bedrock_custom_model :
  model_id:string prop -> unit -> aws_bedrock_custom_model

val yojson_of_aws_bedrock_custom_model :
  aws_bedrock_custom_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_model_arn : string prop;
  creation_time : string prop;
  hyperparameters : (string * string) list prop;
  id : string prop;
  job_arn : string prop;
  job_name : string prop;
  job_tags : (string * string) list prop;
  model_arn : string prop;
  model_id : string prop;
  model_kms_key_arn : string prop;
  model_name : string prop;
  model_tags : (string * string) list prop;
  output_data_config : output_data_config list prop;
  training_data_config : training_data_config list prop;
  training_metrics : training_metrics list prop;
  validation_data_config : validation_data_config list prop;
  validation_metrics : validation_metrics list prop;
}

val register :
  ?tf_module:tf_module -> model_id:string prop -> string -> t

val make : model_id:string prop -> string -> t Tf_core.resource
