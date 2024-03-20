(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type stream_mode_details = {
  stream_mode : string prop;  (** stream_mode *)
}

type aws_kinesis_stream

val aws_kinesis_stream :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_kinesis_stream

val yojson_of_aws_kinesis_stream : aws_kinesis_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  closed_shards : string list prop;
  creation_timestamp : float prop;
  id : string prop;
  name : string prop;
  open_shards : string list prop;
  retention_period : float prop;
  shard_level_metrics : string list prop;
  status : string prop;
  stream_mode_details : stream_mode_details list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
