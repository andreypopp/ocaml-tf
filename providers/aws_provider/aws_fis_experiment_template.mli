(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fis_experiment_template__action__parameter
type aws_fis_experiment_template__action__target
type aws_fis_experiment_template__action

type aws_fis_experiment_template__log_configuration__cloudwatch_logs_configuration

type aws_fis_experiment_template__log_configuration__s3_configuration
type aws_fis_experiment_template__log_configuration
type aws_fis_experiment_template__stop_condition
type aws_fis_experiment_template__target__filter
type aws_fis_experiment_template__target__resource_tag
type aws_fis_experiment_template__target
type aws_fis_experiment_template__timeouts
type aws_fis_experiment_template

val aws_fis_experiment_template :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_fis_experiment_template__timeouts ->
  description:string ->
  role_arn:string ->
  action:aws_fis_experiment_template__action list ->
  log_configuration:
    aws_fis_experiment_template__log_configuration list ->
  stop_condition:aws_fis_experiment_template__stop_condition list ->
  target:aws_fis_experiment_template__target list ->
  string ->
  unit
