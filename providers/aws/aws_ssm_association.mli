(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type output_location

val output_location :
  ?s3_key_prefix:string prop ->
  ?s3_region:string prop ->
  s3_bucket_name:string prop ->
  unit ->
  output_location

type targets

val targets :
  key:string prop -> values:string prop list -> unit -> targets

type aws_ssm_association

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_for_success_timeout_seconds:float prop ->
  ?output_location:output_location list ->
  ?targets:targets list ->
  name:string prop ->
  unit ->
  aws_ssm_association

val yojson_of_aws_ssm_association : aws_ssm_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  wait_for_success_timeout_seconds : float prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_for_success_timeout_seconds:float prop ->
  ?output_location:output_location list ->
  ?targets:targets list ->
  name:string prop ->
  string ->
  t

val make :
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?wait_for_success_timeout_seconds:float prop ->
  ?output_location:output_location list ->
  ?targets:targets list ->
  name:string prop ->
  string ->
  t Tf_core.resource
