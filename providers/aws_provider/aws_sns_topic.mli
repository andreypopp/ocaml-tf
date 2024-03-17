(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_topic

val aws_sns_topic :
  ?application_failure_feedback_role_arn:string ->
  ?application_success_feedback_role_arn:string ->
  ?application_success_feedback_sample_rate:float ->
  ?archive_policy:string ->
  ?content_based_deduplication:bool ->
  ?delivery_policy:string ->
  ?display_name:string ->
  ?fifo_topic:bool ->
  ?firehose_failure_feedback_role_arn:string ->
  ?firehose_success_feedback_role_arn:string ->
  ?firehose_success_feedback_sample_rate:float ->
  ?http_failure_feedback_role_arn:string ->
  ?http_success_feedback_role_arn:string ->
  ?http_success_feedback_sample_rate:float ->
  ?id:string ->
  ?kms_master_key_id:string ->
  ?lambda_failure_feedback_role_arn:string ->
  ?lambda_success_feedback_role_arn:string ->
  ?lambda_success_feedback_sample_rate:float ->
  ?name:string ->
  ?name_prefix:string ->
  ?policy:string ->
  ?signature_version:float ->
  ?sqs_failure_feedback_role_arn:string ->
  ?sqs_success_feedback_role_arn:string ->
  ?sqs_success_feedback_sample_rate:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?tracing_config:string ->
  string ->
  unit
