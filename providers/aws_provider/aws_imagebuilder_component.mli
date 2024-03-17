(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_component

val aws_imagebuilder_component :
  ?change_description:string ->
  ?data:string ->
  ?description:string ->
  ?id:string ->
  ?kms_key_id:string ->
  ?skip_destroy:bool ->
  ?supported_os_versions:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?uri:string ->
  name:string ->
  platform:string ->
  version:string ->
  string ->
  unit
