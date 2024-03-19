(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_sqs_queue_redrive_policy

val aws_sqs_queue_redrive_policy :
  ?id:string prop ->
  queue_url:string prop ->
  redrive_policy:string prop ->
  unit ->
  aws_sqs_queue_redrive_policy

val yojson_of_aws_sqs_queue_redrive_policy :
  aws_sqs_queue_redrive_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  queue_url : string prop;
  redrive_policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  queue_url:string prop ->
  redrive_policy:string prop ->
  string ->
  t
