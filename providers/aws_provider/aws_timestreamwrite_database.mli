(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_timestreamwrite_database

type t = private {
  arn : string prop;
  database_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  table_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_timestreamwrite_database :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  database_name:string prop ->
  string ->
  t
