(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_schema

type t = private {
  arn : string prop;
  compatibility : string prop;
  data_format : string prop;
  description : string prop;
  id : string prop;
  latest_schema_version : float prop;
  next_schema_version : float prop;
  registry_arn : string prop;
  registry_name : string prop;
  schema_checkpoint : float prop;
  schema_definition : string prop;
  schema_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
