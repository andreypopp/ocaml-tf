(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_event_bus

val aws_cloudwatch_event_bus :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_cloudwatch_event_bus

val yojson_of_aws_cloudwatch_event_bus :
  aws_cloudwatch_event_bus -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
