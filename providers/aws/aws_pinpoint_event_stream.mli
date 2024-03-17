(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_event_stream

type t = private {
  application_id : string prop;
  destination_stream_arn : string prop;
  id : string prop;
  role_arn : string prop;
}

val aws_pinpoint_event_stream :
  ?id:string prop ->
  application_id:string prop ->
  destination_stream_arn:string prop ->
  role_arn:string prop ->
  string ->
  t
