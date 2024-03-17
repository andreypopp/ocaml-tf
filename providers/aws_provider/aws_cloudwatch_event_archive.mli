(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_archive

val aws_cloudwatch_event_archive :
  ?description:string ->
  ?event_pattern:string ->
  ?id:string ->
  ?retention_days:float ->
  event_source_arn:string ->
  name:string ->
  string ->
  unit
