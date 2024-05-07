(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type kinesis_configuration

val kinesis_configuration :
  ?aggregation_enabled:bool prop ->
  stream_arn:string prop ->
  unit ->
  kinesis_configuration

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_qldb_stream

val aws_qldb_stream :
  ?exclusive_end_time:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  inclusive_start_time:string prop ->
  ledger_name:string prop ->
  role_arn:string prop ->
  stream_name:string prop ->
  kinesis_configuration:kinesis_configuration list ->
  unit ->
  aws_qldb_stream

val yojson_of_aws_qldb_stream : aws_qldb_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  exclusive_end_time : string prop;
  id : string prop;
  inclusive_start_time : string prop;
  ledger_name : string prop;
  role_arn : string prop;
  stream_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?exclusive_end_time:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  inclusive_start_time:string prop ->
  ledger_name:string prop ->
  role_arn:string prop ->
  stream_name:string prop ->
  kinesis_configuration:kinesis_configuration list ->
  string ->
  t

val make :
  ?exclusive_end_time:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  inclusive_start_time:string prop ->
  ledger_name:string prop ->
  role_arn:string prop ->
  stream_name:string prop ->
  kinesis_configuration:kinesis_configuration list ->
  string ->
  t Tf_core.resource
