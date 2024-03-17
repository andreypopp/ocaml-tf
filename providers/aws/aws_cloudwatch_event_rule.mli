(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_rule

type t = private {
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
  string ->
  t
