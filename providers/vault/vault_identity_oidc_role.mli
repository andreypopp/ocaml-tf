(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_role

val vault_identity_oidc_role :
  ?client_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  ?ttl:float prop ->
  key:string prop ->
  name:string prop ->
  unit ->
  vault_identity_oidc_role

val yojson_of_vault_identity_oidc_role : vault_identity_oidc_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  id : string prop;
  key : string prop;
  name : string prop;
  namespace : string prop;
  template : string prop;
  ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?client_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  ?ttl:float prop ->
  key:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?client_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  ?ttl:float prop ->
  key:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
