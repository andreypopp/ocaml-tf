(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appintegrations_event_integration__event_filter
type aws_appintegrations_event_integration

type t = private {
  arn : string prop;
  description : string prop;
  eventbridge_bus : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_appintegrations_event_integration :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  eventbridge_bus:string prop ->
  name:string prop ->
  event_filter:
    aws_appintegrations_event_integration__event_filter list ->
  string ->
  t
