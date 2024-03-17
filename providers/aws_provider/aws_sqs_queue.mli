(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sqs_queue

val aws_sqs_queue :
  ?content_based_deduplication:bool ->
  ?deduplication_scope:string ->
  ?delay_seconds:float ->
  ?fifo_queue:bool ->
  ?fifo_throughput_limit:string ->
  ?id:string ->
  ?kms_data_key_reuse_period_seconds:float ->
  ?kms_master_key_id:string ->
  ?max_message_size:float ->
  ?message_retention_seconds:float ->
  ?name:string ->
  ?name_prefix:string ->
  ?policy:string ->
  ?receive_wait_time_seconds:float ->
  ?redrive_allow_policy:string ->
  ?redrive_policy:string ->
  ?sqs_managed_sse_enabled:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?visibility_timeout_seconds:float ->
  string ->
  unit
