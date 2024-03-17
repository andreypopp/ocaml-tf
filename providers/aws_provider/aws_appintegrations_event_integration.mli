(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appintegrations_event_integration__event_filter
type aws_appintegrations_event_integration

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
  unit
