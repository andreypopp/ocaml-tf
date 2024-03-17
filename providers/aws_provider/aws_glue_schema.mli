(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_schema

val aws_glue_schema :
  ?description:string prop ->
  ?id:string prop ->
  ?registry_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  compatibility:string prop ->
  data_format:string prop ->
  schema_definition:string prop ->
  schema_name:string prop ->
  string ->
  unit
