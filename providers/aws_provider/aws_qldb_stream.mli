(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_qldb_stream__kinesis_configuration
type aws_qldb_stream__timeouts
type aws_qldb_stream

val aws_qldb_stream :
  ?exclusive_end_time:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_qldb_stream__timeouts ->
  inclusive_start_time:string prop ->
  ledger_name:string prop ->
  role_arn:string prop ->
  stream_name:string prop ->
  kinesis_configuration:aws_qldb_stream__kinesis_configuration list ->
  string ->
  unit
