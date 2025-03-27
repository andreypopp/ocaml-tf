(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_approle_auth_backend_login

val vault_approle_auth_backend_login :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_id:string prop ->
  role_id:string prop ->
  unit ->
  vault_approle_auth_backend_login

val yojson_of_vault_approle_auth_backend_login : vault_approle_auth_backend_login -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  backend : string prop;
  client_token : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_started : string prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  policies : string list prop;
  renewable : bool prop;
  role_id : string prop;
  secret_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_id:string prop ->
  role_id:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_id:string prop ->
  role_id:string prop ->
  string ->
  t Tf_core.resource
