(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_trigger__actions__notification_property
type aws_glue_trigger__actions
type aws_glue_trigger__event_batching_condition
type aws_glue_trigger__predicate__conditions
type aws_glue_trigger__predicate
type aws_glue_trigger__timeouts
type aws_glue_trigger

type t = private {
  arn : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  start_on_creation : bool prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  workflow_name : string prop;
}

val aws_glue_trigger :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?schedule:string prop ->
  ?start_on_creation:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?workflow_name:string prop ->
  ?timeouts:aws_glue_trigger__timeouts ->
  name:string prop ->
  type_:string prop ->
  actions:aws_glue_trigger__actions list ->
  event_batching_condition:
    aws_glue_trigger__event_batching_condition list ->
  predicate:aws_glue_trigger__predicate list ->
  string ->
  t
