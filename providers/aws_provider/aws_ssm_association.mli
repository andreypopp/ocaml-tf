(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssm_association__output_location
type aws_ssm_association__targets
type aws_ssm_association

type t = private {
  apply_only_at_cron_interval : bool prop;
  arn : string prop;
  association_id : string prop;
  association_name : string prop;
  automation_target_parameter_name : string prop;
  compliance_severity : string prop;
  document_version : string prop;
  id : string prop;
  instance_id : string prop;
  max_concurrency : string prop;
  max_errors : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  schedule_expression : string prop;
  sync_compliance : string prop;
  wait_for_success_timeout_seconds : float prop;
}

val aws_ssm_association :
  ?apply_only_at_cron_interval:bool prop ->
  ?association_name:string prop ->
  ?automation_target_parameter_name:string prop ->
  ?compliance_severity:string prop ->
  ?document_version:string prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?max_concurrency:string prop ->
  ?max_errors:string prop ->
  ?parameters:(string * string prop) list ->
  ?schedule_expression:string prop ->
  ?sync_compliance:string prop ->
  ?wait_for_success_timeout_seconds:float prop ->
  name:string prop ->
  output_location:aws_ssm_association__output_location list ->
  targets:aws_ssm_association__targets list ->
  string ->
  t
