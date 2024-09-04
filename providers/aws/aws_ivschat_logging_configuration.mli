(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_configuration__cloudwatch_logs

val destination_configuration__cloudwatch_logs :
  log_group_name:string prop ->
  unit ->
  destination_configuration__cloudwatch_logs

type destination_configuration__firehose

val destination_configuration__firehose :
  delivery_stream_name:string prop ->
  unit ->
  destination_configuration__firehose

type destination_configuration__s3

val destination_configuration__s3 :
  bucket_name:string prop -> unit -> destination_configuration__s3

type destination_configuration

val destination_configuration :
  ?cloudwatch_logs:destination_configuration__cloudwatch_logs list ->
  ?firehose:destination_configuration__firehose list ->
  ?s3:destination_configuration__s3 list ->
  unit ->
  destination_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_ivschat_logging_configuration

val aws_ivschat_logging_configuration :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?destination_configuration:destination_configuration list ->
  ?timeouts:timeouts ->
  unit ->
  aws_ivschat_logging_configuration

val yojson_of_aws_ivschat_logging_configuration :
  aws_ivschat_logging_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?destination_configuration:destination_configuration list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?destination_configuration:destination_configuration list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
