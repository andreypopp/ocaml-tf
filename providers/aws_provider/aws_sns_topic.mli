(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_topic

val aws_sns_topic :
  ?application_failure_feedback_role_arn:string prop ->
  ?application_success_feedback_role_arn:string prop ->
  ?application_success_feedback_sample_rate:float prop ->
  ?archive_policy:string prop ->
  ?content_based_deduplication:bool prop ->
  ?delivery_policy:string prop ->
  ?display_name:string prop ->
  ?fifo_topic:bool prop ->
  ?firehose_failure_feedback_role_arn:string prop ->
  ?firehose_success_feedback_role_arn:string prop ->
  ?firehose_success_feedback_sample_rate:float prop ->
  ?http_failure_feedback_role_arn:string prop ->
  ?http_success_feedback_role_arn:string prop ->
  ?http_success_feedback_sample_rate:float prop ->
  ?id:string prop ->
  ?kms_master_key_id:string prop ->
  ?lambda_failure_feedback_role_arn:string prop ->
  ?lambda_success_feedback_role_arn:string prop ->
  ?lambda_success_feedback_sample_rate:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?policy:string prop ->
  ?signature_version:float prop ->
  ?sqs_failure_feedback_role_arn:string prop ->
  ?sqs_success_feedback_role_arn:string prop ->
  ?sqs_success_feedback_sample_rate:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tracing_config:string prop ->
  string ->
  unit
