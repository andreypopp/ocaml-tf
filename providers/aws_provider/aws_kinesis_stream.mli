(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesis_stream__stream_mode_details
type aws_kinesis_stream__timeouts
type aws_kinesis_stream

val aws_kinesis_stream :
  ?arn:string prop ->
  ?encryption_type:string prop ->
  ?enforce_consumer_deletion:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?retention_period:float prop ->
  ?shard_count:float prop ->
  ?shard_level_metrics:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_kinesis_stream__timeouts ->
  name:string prop ->
  stream_mode_details:aws_kinesis_stream__stream_mode_details list ->
  string ->
  unit
