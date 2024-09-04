(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_mode

val authentication_mode :
  ?passwords:string prop list ->
  type_:string prop ->
  unit ->
  authentication_mode

type aws_memorydb_user

val aws_memorydb_user :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  access_string:string prop ->
  user_name:string prop ->
  authentication_mode:authentication_mode list ->
  unit ->
  aws_memorydb_user

val yojson_of_aws_memorydb_user : aws_memorydb_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_string : string prop;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  access_string:string prop ->
  user_name:string prop ->
  authentication_mode:authentication_mode list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  access_string:string prop ->
  user_name:string prop ->
  authentication_mode:authentication_mode list ->
  string ->
  t Tf_core.resource
