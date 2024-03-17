(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_connection__physical_connection_requirements
type aws_glue_connection

val aws_glue_connection :
  ?catalog_id:string ->
  ?connection_properties:(string * string) list ->
  ?connection_type:string ->
  ?description:string ->
  ?id:string ->
  ?match_criteria:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  physical_connection_requirements:
    aws_glue_connection__physical_connection_requirements list ->
  string ->
  unit
