(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_user__authentication_mode
type aws_memorydb_user

type t = private {
  access_string : string prop;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

val aws_memorydb_user :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  access_string:string prop ->
  user_name:string prop ->
  authentication_mode:aws_memorydb_user__authentication_mode list ->
  string ->
  t
