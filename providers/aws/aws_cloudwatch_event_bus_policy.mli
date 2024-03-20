(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_event_bus_policy

val aws_cloudwatch_event_bus_policy :
  ?event_bus_name:string prop ->
  ?id:string prop ->
  policy:string prop ->
  unit ->
  aws_cloudwatch_event_bus_policy

val yojson_of_aws_cloudwatch_event_bus_policy :
  aws_cloudwatch_event_bus_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  event_bus_name : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?event_bus_name:string prop ->
  ?id:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?event_bus_name:string prop ->
  ?id:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
