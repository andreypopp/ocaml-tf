(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sqs_queues

val aws_sqs_queues :
  ?id:string prop ->
  ?queue_name_prefix:string prop ->
  unit ->
  aws_sqs_queues

val yojson_of_aws_sqs_queues : aws_sqs_queues -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  queue_name_prefix : string prop;
  queue_urls : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?queue_name_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?queue_name_prefix:string prop ->
  string ->
  t Tf_core.resource
