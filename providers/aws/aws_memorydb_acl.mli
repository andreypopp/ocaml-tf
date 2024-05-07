(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_memorydb_acl

val aws_memorydb_acl :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_names:string prop list ->
  unit ->
  aws_memorydb_acl

val yojson_of_aws_memorydb_acl : aws_memorydb_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_names:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_names:string prop list ->
  string ->
  t Tf_core.resource
