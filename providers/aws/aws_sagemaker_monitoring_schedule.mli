(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type monitoring_schedule_config__schedule_config

val monitoring_schedule_config__schedule_config :
  schedule_expression:string prop ->
  unit ->
  monitoring_schedule_config__schedule_config

type monitoring_schedule_config

val monitoring_schedule_config :
  monitoring_job_definition_name:string prop ->
  monitoring_type:string prop ->
  schedule_config:monitoring_schedule_config__schedule_config list ->
  unit ->
  monitoring_schedule_config

type aws_sagemaker_monitoring_schedule

val aws_sagemaker_monitoring_schedule :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  monitoring_schedule_config:monitoring_schedule_config list ->
  unit ->
  aws_sagemaker_monitoring_schedule

val yojson_of_aws_sagemaker_monitoring_schedule :
  aws_sagemaker_monitoring_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  monitoring_schedule_config:monitoring_schedule_config list ->
  string ->
  t
