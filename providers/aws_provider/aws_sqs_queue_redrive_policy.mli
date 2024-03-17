(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sqs_queue_redrive_policy

val aws_sqs_queue_redrive_policy :
  ?id:string prop ->
  queue_url:string prop ->
  redrive_policy:string prop ->
  string ->
  unit
