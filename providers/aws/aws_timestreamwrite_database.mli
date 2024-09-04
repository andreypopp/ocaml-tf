(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_timestreamwrite_database

val aws_timestreamwrite_database :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  database_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  database_name:string prop ->
  string ->
  t Tf_core.resource
