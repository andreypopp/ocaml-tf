(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_qldb_stream__kinesis_configuration
type aws_qldb_stream__timeouts
type aws_qldb_stream

val aws_qldb_stream :
  ?exclusive_end_time:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_qldb_stream__timeouts ->
  inclusive_start_time:string ->
  ledger_name:string ->
  role_arn:string ->
  stream_name:string ->
  kinesis_configuration:aws_qldb_stream__kinesis_configuration list ->
  string ->
  unit
