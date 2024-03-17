(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_kinesis_stream_consumer

type t = private {
  arn : string prop;
  creation_timestamp : string prop;
  id : string prop;
  name : string prop;
  stream_arn : string prop;
}

val aws_kinesis_stream_consumer :
  ?id:string prop ->
  name:string prop ->
  stream_arn:string prop ->
  string ->
  t
