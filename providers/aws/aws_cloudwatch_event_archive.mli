(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_event_archive

val aws_cloudwatch_event_archive :
  ?description:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  event_source_arn:string prop ->
  name:string prop ->
  unit ->
  aws_cloudwatch_event_archive

val yojson_of_aws_cloudwatch_event_archive :
  aws_cloudwatch_event_archive -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  event_pattern : string prop;
  event_source_arn : string prop;
  id : string prop;
  name : string prop;
  retention_days : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  event_source_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?event_pattern:string prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  event_source_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
