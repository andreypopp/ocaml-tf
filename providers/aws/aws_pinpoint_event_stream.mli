(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_pinpoint_event_stream

val aws_pinpoint_event_stream :
  ?id:string prop ->
  application_id:string prop ->
  destination_stream_arn:string prop ->
  role_arn:string prop ->
  unit ->
  aws_pinpoint_event_stream

val yojson_of_aws_pinpoint_event_stream :
  aws_pinpoint_event_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  destination_stream_arn : string prop;
  id : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  application_id:string prop ->
  destination_stream_arn:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  application_id:string prop ->
  destination_stream_arn:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
