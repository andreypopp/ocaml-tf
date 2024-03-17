(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cleanrooms_configured_table__table_reference
type aws_cleanrooms_configured_table__timeouts
type aws_cleanrooms_configured_table

type t = private {
  allowed_columns : string list prop;
  analysis_method : string prop;
  arn : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

val aws_cleanrooms_configured_table :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_cleanrooms_configured_table__timeouts ->
  allowed_columns:string prop list ->
  analysis_method:string prop ->
  name:string prop ->
  table_reference:
    aws_cleanrooms_configured_table__table_reference list ->
  string ->
  t
