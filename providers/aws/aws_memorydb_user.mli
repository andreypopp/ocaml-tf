(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type authentication_mode

val authentication_mode :
  passwords:string prop list ->
  type_:string prop ->
  unit ->
  authentication_mode

type aws_memorydb_user

val aws_memorydb_user :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  access_string:string prop ->
  user_name:string prop ->
  authentication_mode:authentication_mode list ->
  unit ->
  aws_memorydb_user

val yojson_of_aws_memorydb_user : aws_memorydb_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_string : string prop;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  access_string:string prop ->
  user_name:string prop ->
  authentication_mode:authentication_mode list ->
  string ->
  t
