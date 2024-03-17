(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_trigger__actions__notification_property
type aws_glue_trigger__actions
type aws_glue_trigger__event_batching_condition
type aws_glue_trigger__predicate__conditions
type aws_glue_trigger__predicate
type aws_glue_trigger__timeouts
type aws_glue_trigger

val aws_glue_trigger :
  ?description:string ->
  ?enabled:bool ->
  ?schedule:string ->
  ?start_on_creation:bool ->
  ?tags:(string * string) list ->
  ?workflow_name:string ->
  ?timeouts:aws_glue_trigger__timeouts ->
  name:string ->
  type_:string ->
  actions:aws_glue_trigger__actions list ->
  event_batching_condition:
    aws_glue_trigger__event_batching_condition list ->
  predicate:aws_glue_trigger__predicate list ->
  string ->
  unit
