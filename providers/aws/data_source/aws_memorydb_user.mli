(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_mode = {
  password_count : float prop;  (** password_count *)
  type_ : string prop; [@key "type"]  (** type *)
}

type aws_memorydb_user

val aws_memorydb_user :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  user_name:string prop ->
  unit ->
  aws_memorydb_user

val yojson_of_aws_memorydb_user : aws_memorydb_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_string : string prop;
  arn : string prop;
  authentication_mode : authentication_mode list prop;
  id : string prop;
  minimum_engine_version : string prop;
  tags : (string * string) list prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
