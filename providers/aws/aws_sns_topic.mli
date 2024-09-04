(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?tracing_config:string prop ->
  unit ->
  aws_sns_topic

val yojson_of_aws_sns_topic : aws_sns_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_failure_feedback_role_arn : string prop;
  application_success_feedback_role_arn : string prop;
  application_success_feedback_sample_rate : float prop;
  archive_policy : string prop;
  arn : string prop;
  beginning_archive_time : string prop;
  content_based_deduplication : bool prop;
  delivery_policy : string prop;
  display_name : string prop;
  fifo_topic : bool prop;
  firehose_failure_feedback_role_arn : string prop;
  firehose_success_feedback_role_arn : string prop;
  firehose_success_feedback_sample_rate : float prop;
  http_failure_feedback_role_arn : string prop;
  http_success_feedback_role_arn : string prop;
  http_success_feedback_sample_rate : float prop;
  id : string prop;
  kms_master_key_id : string prop;
  lambda_failure_feedback_role_arn : string prop;
  lambda_success_feedback_role_arn : string prop;
  lambda_success_feedback_sample_rate : float prop;
  name : string prop;
  name_prefix : string prop;
  owner : string prop;
  policy : string prop;
  signature_version : float prop;
  sqs_failure_feedback_role_arn : string prop;
  sqs_success_feedback_role_arn : string prop;
  sqs_success_feedback_sample_rate : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tracing_config : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?tracing_config:string prop ->
  string ->
  t

val make :
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?tracing_config:string prop ->
  string ->
  t Tf_core.resource
