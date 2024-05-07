(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_event_rule

val aws_cloudwatch_event_rule :
  ?description:string prop ->
  ?event_bus_name:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?role_arn:string prop ->
  ?schedule_expression:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  unit ->
  aws_cloudwatch_event_rule

val yojson_of_aws_cloudwatch_event_rule :
  aws_cloudwatch_event_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  event_bus_name : string prop;
  event_pattern : string prop;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
  name_prefix : string prop;
  role_arn : string prop;
  schedule_expression : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?event_bus_name:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?role_arn:string prop ->
  ?schedule_expression:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?event_bus_name:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?role_arn:string prop ->
  ?schedule_expression:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t Tf_core.resource
