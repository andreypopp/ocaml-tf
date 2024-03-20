(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_mode

val authentication_mode :
  ?password_count:float prop ->
  ?type_:string prop ->
  unit ->
  authentication_mode

type aws_elasticache_user

val aws_elasticache_user :
  ?access_string:string prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?no_password_required:bool prop ->
  ?passwords:string prop list ->
  ?user_name:string prop ->
  user_id:string prop ->
  authentication_mode:authentication_mode list ->
  unit ->
  aws_elasticache_user

val yojson_of_aws_elasticache_user : aws_elasticache_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_string : string prop;
  engine : string prop;
  id : string prop;
  no_password_required : bool prop;
  passwords : string list prop;
  user_id : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_string:string prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?no_password_required:bool prop ->
  ?passwords:string prop list ->
  ?user_name:string prop ->
  user_id:string prop ->
  authentication_mode:authentication_mode list ->
  string ->
  t

val make :
  ?access_string:string prop ->
  ?engine:string prop ->
  ?id:string prop ->
  ?no_password_required:bool prop ->
  ?passwords:string prop list ->
  ?user_name:string prop ->
  user_id:string prop ->
  authentication_mode:authentication_mode list ->
  string ->
  t Tf_core.resource
