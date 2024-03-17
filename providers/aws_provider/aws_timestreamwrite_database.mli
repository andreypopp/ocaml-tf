(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_timestreamwrite_database

val aws_timestreamwrite_database :
  ?id:string ->
  ?kms_key_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  database_name:string ->
  string ->
  unit
