(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_association__output_location
type aws_ssm_association__targets
type aws_ssm_association

val aws_ssm_association :
  ?apply_only_at_cron_interval:bool ->
  ?association_name:string ->
  ?automation_target_parameter_name:string ->
  ?compliance_severity:string ->
  ?instance_id:string ->
  ?max_concurrency:string ->
  ?max_errors:string ->
  ?schedule_expression:string ->
  ?sync_compliance:string ->
  ?wait_for_success_timeout_seconds:float ->
  name:string ->
  output_location:aws_ssm_association__output_location list ->
  targets:aws_ssm_association__targets list ->
  string ->
  unit
