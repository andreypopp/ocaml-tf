(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_event_rule

val aws_cloudwatch_event_rule :
  ?description:string prop ->
  ?event_bus_name:string prop ->
  ?event_pattern:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?role_arn:string prop ->
  ?schedule_expression:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  force_destroy : bool prop;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
  name_prefix : string prop;
  role_arn : string prop;
  schedule_expression : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?event_bus_name:string prop ->
  ?event_pattern:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?role_arn:string prop ->
  ?schedule_expression:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?description:string prop ->
  ?event_bus_name:string prop ->
  ?event_pattern:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?role_arn:string prop ->
  ?schedule_expression:string prop ->
  ?state:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
