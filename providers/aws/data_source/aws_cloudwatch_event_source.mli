(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_event_source

val aws_cloudwatch_event_source :
  ?id:string prop ->
  ?name_prefix:string prop ->
  unit ->
  aws_cloudwatch_event_source

val yojson_of_aws_cloudwatch_event_source :
  aws_cloudwatch_event_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_by : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name_prefix:string prop ->
  string ->
  t Tf_core.resource
