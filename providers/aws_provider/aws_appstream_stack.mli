(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_stack__access_endpoints
type aws_appstream_stack__application_settings
type aws_appstream_stack__storage_connectors
type aws_appstream_stack__streaming_experience_settings
type aws_appstream_stack__user_settings
type aws_appstream_stack

val aws_appstream_stack :
  ?description:string prop ->
  ?display_name:string prop ->
  ?embed_host_domains:string prop list ->
  ?feedback_url:string prop ->
  ?id:string prop ->
  ?redirect_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  access_endpoints:aws_appstream_stack__access_endpoints list ->
  application_settings:aws_appstream_stack__application_settings list ->
  storage_connectors:aws_appstream_stack__storage_connectors list ->
  streaming_experience_settings:
    aws_appstream_stack__streaming_experience_settings list ->
  user_settings:aws_appstream_stack__user_settings list ->
  string ->
  unit
