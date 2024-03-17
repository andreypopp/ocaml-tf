(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_bus_policy

type t = private {
  event_bus_name : string prop;
  id : string prop;
  policy : string prop;
}

val aws_cloudwatch_event_bus_policy :
  ?event_bus_name:string prop ->
  ?id:string prop ->
  policy:string prop ->
  string ->
  t
