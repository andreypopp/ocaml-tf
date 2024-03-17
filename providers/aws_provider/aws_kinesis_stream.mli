(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesis_stream__stream_mode_details
type aws_kinesis_stream__timeouts
type aws_kinesis_stream

val aws_kinesis_stream :
  ?encryption_type:string ->
  ?enforce_consumer_deletion:bool ->
  ?kms_key_id:string ->
  ?retention_period:float ->
  ?shard_count:float ->
  ?shard_level_metrics:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_kinesis_stream__timeouts ->
  name:string ->
  stream_mode_details:aws_kinesis_stream__stream_mode_details list ->
  string ->
  unit
