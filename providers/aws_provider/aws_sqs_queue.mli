(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sqs_queue

val aws_sqs_queue :
  ?content_based_deduplication:bool ->
  ?delay_seconds:float ->
  ?fifo_queue:bool ->
  ?kms_master_key_id:string ->
  ?max_message_size:float ->
  ?message_retention_seconds:float ->
  ?receive_wait_time_seconds:float ->
  ?tags:(string * string) list ->
  ?visibility_timeout_seconds:float ->
  string ->
  unit
