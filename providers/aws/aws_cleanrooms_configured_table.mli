(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type table_reference

val table_reference :
  database_name:string prop ->
  table_name:string prop ->
  unit ->
  table_reference

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cleanrooms_configured_table

val aws_cleanrooms_configured_table :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  allowed_columns:string prop list ->
  analysis_method:string prop ->
  name:string prop ->
  table_reference:table_reference list ->
  unit ->
  aws_cleanrooms_configured_table

val yojson_of_aws_cleanrooms_configured_table :
  aws_cleanrooms_configured_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  allowed_columns:string prop list ->
  analysis_method:string prop ->
  name:string prop ->
  table_reference:table_reference list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  allowed_columns:string prop list ->
  analysis_method:string prop ->
  name:string prop ->
  table_reference:table_reference list ->
  string ->
  t Tf_core.resource
