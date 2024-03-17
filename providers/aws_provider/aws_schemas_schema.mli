(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_schemas_schema

val aws_schemas_schema :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  content:string prop ->
  name:string prop ->
  registry_name:string prop ->
  type_:string prop ->
  string ->
  unit
