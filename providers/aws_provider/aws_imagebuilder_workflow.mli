(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_workflow

val aws_imagebuilder_workflow :
  ?change_description:string prop ->
  ?data:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?uri:string prop ->
  name:string prop ->
  type_:string prop ->
  version:string prop ->
  string ->
  unit
