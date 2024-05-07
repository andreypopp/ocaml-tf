(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auth

val auth :
  ?auth_scheme:string prop ->
  ?client_password_auth_type:string prop ->
  ?description:string prop ->
  ?iam_auth:string prop ->
  ?secret_arn:string prop ->
  ?username:string prop ->
  unit ->
  auth

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_db_proxy

val aws_db_proxy :
  ?debug_logging:bool prop ->
  ?id:string prop ->
  ?idle_client_timeout:float prop ->
  ?require_tls:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  engine_family:string prop ->
  name:string prop ->
  role_arn:string prop ->
  vpc_subnet_ids:string prop list ->
  auth:auth list ->
  unit ->
  aws_db_proxy

val yojson_of_aws_db_proxy : aws_db_proxy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  debug_logging : bool prop;
  endpoint : string prop;
  engine_family : string prop;
  id : string prop;
  idle_client_timeout : float prop;
  name : string prop;
  require_tls : bool prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?debug_logging:bool prop ->
  ?id:string prop ->
  ?idle_client_timeout:float prop ->
  ?require_tls:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  engine_family:string prop ->
  name:string prop ->
  role_arn:string prop ->
  vpc_subnet_ids:string prop list ->
  auth:auth list ->
  string ->
  t

val make :
  ?debug_logging:bool prop ->
  ?id:string prop ->
  ?idle_client_timeout:float prop ->
  ?require_tls:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_security_group_ids:string prop list ->
  ?timeouts:timeouts ->
  engine_family:string prop ->
  name:string prop ->
  role_arn:string prop ->
  vpc_subnet_ids:string prop list ->
  auth:auth list ->
  string ->
  t Tf_core.resource
