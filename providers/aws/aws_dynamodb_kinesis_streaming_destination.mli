(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dynamodb_kinesis_streaming_destination

val aws_dynamodb_kinesis_streaming_destination :
  ?id:string prop ->
  stream_arn:string prop ->
  table_name:string prop ->
  unit ->
  aws_dynamodb_kinesis_streaming_destination

val yojson_of_aws_dynamodb_kinesis_streaming_destination :
  aws_dynamodb_kinesis_streaming_destination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  stream_arn : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  stream_arn:string prop ->
  table_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  stream_arn:string prop ->
  table_name:string prop ->
  string ->
  t Tf_core.resource
