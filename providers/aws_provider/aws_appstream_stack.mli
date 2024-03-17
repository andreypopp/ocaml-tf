(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_stack__access_endpoints
type aws_appstream_stack__application_settings
type aws_appstream_stack__storage_connectors
type aws_appstream_stack__streaming_experience_settings
type aws_appstream_stack__user_settings
type aws_appstream_stack

val aws_appstream_stack :
  ?description:string ->
  ?display_name:string ->
  ?embed_host_domains:string list ->
  ?feedback_url:string ->
  ?id:string ->
  ?redirect_url:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  access_endpoints:aws_appstream_stack__access_endpoints list ->
  application_settings:aws_appstream_stack__application_settings list ->
  storage_connectors:aws_appstream_stack__storage_connectors list ->
  streaming_experience_settings:
    aws_appstream_stack__streaming_experience_settings list ->
  user_settings:aws_appstream_stack__user_settings list ->
  string ->
  unit
