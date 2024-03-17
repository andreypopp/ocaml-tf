(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sqs_queue_policy

type t = private {
  id : string prop;
  policy : string prop;
  queue_url : string prop;
}

val aws_sqs_queue_policy :
  ?id:string prop ->
  policy:string prop ->
  queue_url:string prop ->
  string ->
  t
