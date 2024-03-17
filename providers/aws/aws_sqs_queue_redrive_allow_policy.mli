(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sqs_queue_redrive_allow_policy

type t = private {
  id : string prop;
  queue_url : string prop;
  redrive_allow_policy : string prop;
}

val aws_sqs_queue_redrive_allow_policy :
  ?id:string prop ->
  queue_url:string prop ->
  redrive_allow_policy:string prop ->
  string ->
  t
