(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sagemaker_monitoring_schedule__monitoring_schedule_config__schedule_config

type aws_sagemaker_monitoring_schedule__monitoring_schedule_config
type aws_sagemaker_monitoring_schedule

val aws_sagemaker_monitoring_schedule :
  ?id:string ->
  ?name:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  monitoring_schedule_config:
    aws_sagemaker_monitoring_schedule__monitoring_schedule_config
    list ->
  string ->
  unit
