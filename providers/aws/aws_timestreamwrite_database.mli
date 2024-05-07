(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_timestreamwrite_database

val aws_timestreamwrite_database :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  database_name:string prop ->
  unit ->
  aws_timestreamwrite_database

val yojson_of_aws_timestreamwrite_database :
  aws_timestreamwrite_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  database_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  table_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  database_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  database_name:string prop ->
  string ->
  t Tf_core.resource
