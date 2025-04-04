(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_mode

val authentication_mode :
  ?passwords:string prop list ->
  type_:string prop ->
  unit ->
  authentication_mode

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_elasticache_user

val aws_elasticache_user :
  ?id:string prop ->
  ?no_password_required:bool prop ->
  ?passwords:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?authentication_mode:authentication_mode list ->
  ?timeouts:timeouts ->
  access_string:string prop ->
  engine:string prop ->
  user_id:string prop ->
  user_name:string prop ->
  unit ->
  aws_elasticache_user

val yojson_of_aws_elasticache_user : aws_elasticache_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_string : string prop;
  arn : string prop;
  engine : string prop;
  id : string prop;
  no_password_required : bool prop;
  passwords : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_id : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?no_password_required:bool prop ->
  ?passwords:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?authentication_mode:authentication_mode list ->
  ?timeouts:timeouts ->
  access_string:string prop ->
  engine:string prop ->
  user_id:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?no_password_required:bool prop ->
  ?passwords:string prop list ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?authentication_mode:authentication_mode list ->
  ?timeouts:timeouts ->
  access_string:string prop ->
  engine:string prop ->
  user_id:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
