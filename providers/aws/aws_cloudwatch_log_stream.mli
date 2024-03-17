(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_stream

type t = private {
  arn : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
}

val aws_cloudwatch_log_stream :
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  string ->
  t
