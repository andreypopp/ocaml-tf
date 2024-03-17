(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sqs_queue

val aws_sqs_queue :
  ?content_based_deduplication:bool prop ->
  ?deduplication_scope:string prop ->
  ?delay_seconds:float prop ->
  ?fifo_queue:bool prop ->
  ?fifo_throughput_limit:string prop ->
  ?id:string prop ->
  ?kms_data_key_reuse_period_seconds:float prop ->
  ?kms_master_key_id:string prop ->
  ?max_message_size:float prop ->
  ?message_retention_seconds:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?policy:string prop ->
  ?receive_wait_time_seconds:float prop ->
  ?redrive_allow_policy:string prop ->
  ?redrive_policy:string prop ->
  ?sqs_managed_sse_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?visibility_timeout_seconds:float prop ->
  string ->
  unit
