(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appintegrations_event_integration__event_filter
type aws_appintegrations_event_integration

val aws_appintegrations_event_integration :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  eventbridge_bus:string ->
  name:string ->
  event_filter:
    aws_appintegrations_event_integration__event_filter list ->
  string ->
  unit
