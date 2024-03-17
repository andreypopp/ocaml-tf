(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_connection__physical_connection_requirements
type aws_glue_connection

type t = private {
  arn : string prop;
  catalog_id : string prop;
  connection_properties : (string * string) list prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  match_criteria : string list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_glue_connection :
  ?catalog_id:string prop ->
  ?connection_properties:(string * string prop) list ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?match_criteria:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  physical_connection_requirements:
    aws_glue_connection__physical_connection_requirements list ->
  string ->
  t
