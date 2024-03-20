(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_kinesis_firehose_delivery_stream

val aws_kinesis_firehose_delivery_stream :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_kinesis_firehose_delivery_stream

val yojson_of_aws_kinesis_firehose_delivery_stream :
  aws_kinesis_firehose_delivery_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
