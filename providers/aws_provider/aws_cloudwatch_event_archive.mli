(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_archive

val aws_cloudwatch_event_archive :
  ?description:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  event_source_arn:string prop ->
  name:string prop ->
  string ->
  unit
