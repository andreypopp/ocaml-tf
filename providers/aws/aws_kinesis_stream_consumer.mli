(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kinesis_stream_consumer

val aws_kinesis_stream_consumer :
  ?id:string prop ->
  name:string prop ->
  stream_arn:string prop ->
  unit ->
  aws_kinesis_stream_consumer

val yojson_of_aws_kinesis_stream_consumer :
  aws_kinesis_stream_consumer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_timestamp : string prop;
  id : string prop;
  name : string prop;
  stream_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  stream_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  stream_arn:string prop ->
  string ->
  t Tf_core.resource
