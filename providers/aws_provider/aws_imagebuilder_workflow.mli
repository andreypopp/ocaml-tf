(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_workflow

val aws_imagebuilder_workflow :
  ?change_description:string ->
  ?description:string ->
  ?kms_key_id:string ->
  ?tags:(string * string) list ->
  ?uri:string ->
  name:string ->
  type_:string ->
  version:string ->
  string ->
  unit
