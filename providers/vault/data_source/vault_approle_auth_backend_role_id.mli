(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_approle_auth_backend_role_id

val vault_approle_auth_backend_role_id :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  role_name:string prop ->
  unit ->
  vault_approle_auth_backend_role_id

val yojson_of_vault_approle_auth_backend_role_id : vault_approle_auth_backend_role_id -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  role_id : string prop;
  role_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  role_name:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  role_name:string prop ->
  string ->
  t Tf_core.resource
