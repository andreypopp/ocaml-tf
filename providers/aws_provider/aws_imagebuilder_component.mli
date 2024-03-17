(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_component

val aws_imagebuilder_component :
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?skip_destroy:bool prop ->
  ?supported_os_versions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?uri:string prop ->
  name:string prop ->
  platform:string prop ->
  version:string prop ->
  string ->
  unit
