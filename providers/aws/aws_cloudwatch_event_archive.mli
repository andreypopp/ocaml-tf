(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_archive

type t = private {
  arn : string prop;
  description : string prop;
  event_pattern : string prop;
  event_source_arn : string prop;
  id : string prop;
  name : string prop;
  retention_days : float prop;
}

val aws_cloudwatch_event_archive :
  ?description:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  event_source_arn:string prop ->
  name:string prop ->
  string ->
  t
