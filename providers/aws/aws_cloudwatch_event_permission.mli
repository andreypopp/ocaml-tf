(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  key:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  condition

type aws_cloudwatch_event_permission

val aws_cloudwatch_event_permission :
  ?action:string prop ->
  ?event_bus_name:string prop ->
  ?id:string prop ->
  ?condition:condition list ->
  principal:string prop ->
  statement_id:string prop ->
  unit ->
  aws_cloudwatch_event_permission

val yojson_of_aws_cloudwatch_event_permission :
  aws_cloudwatch_event_permission -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  event_bus_name : string prop;
  id : string prop;
  principal : string prop;
  statement_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?action:string prop ->
  ?event_bus_name:string prop ->
  ?id:string prop ->
  ?condition:condition list ->
  principal:string prop ->
  statement_id:string prop ->
  string ->
  t

val make :
  ?action:string prop ->
  ?event_bus_name:string prop ->
  ?id:string prop ->
  ?condition:condition list ->
  principal:string prop ->
  statement_id:string prop ->
  string ->
  t Tf_core.resource
