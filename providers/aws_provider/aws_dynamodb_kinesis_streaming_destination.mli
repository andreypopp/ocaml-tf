(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dynamodb_kinesis_streaming_destination

type t = private {
  id : string prop;
  stream_arn : string prop;
  table_name : string prop;
}

val aws_dynamodb_kinesis_streaming_destination :
  ?id:string prop ->
  stream_arn:string prop ->
  table_name:string prop ->
  string ->
  t
