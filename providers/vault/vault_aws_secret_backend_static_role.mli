(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_secret_backend_static_role

val vault_aws_secret_backend_static_role :
  ?assume_role_arn:string prop ->
  ?assume_role_session_name:string prop ->
  ?backend:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  rotation_period:float prop ->
  username:string prop ->
  unit ->
  vault_aws_secret_backend_static_role

val yojson_of_vault_aws_secret_backend_static_role : vault_aws_secret_backend_static_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assume_role_arn : string prop;
  assume_role_session_name : string prop;
  backend : string prop;
  external_id : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  rotation_period : float prop;
  username : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?assume_role_arn:string prop ->
  ?assume_role_session_name:string prop ->
  ?backend:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  rotation_period:float prop ->
  username:string prop ->
  string ->
  t

val make :
  ?assume_role_arn:string prop ->
  ?assume_role_session_name:string prop ->
  ?backend:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  rotation_period:float prop ->
  username:string prop ->
  string ->
  t Tf_core.resource
