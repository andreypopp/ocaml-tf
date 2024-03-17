(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_schema

val aws_glue_schema :
  ?description:string ->
  ?id:string ->
  ?registry_arn:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  compatibility:string ->
  data_format:string ->
  schema_definition:string ->
  schema_name:string ->
  string ->
  unit
