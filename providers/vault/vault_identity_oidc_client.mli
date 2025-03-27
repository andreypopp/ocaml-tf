(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_client

val vault_identity_oidc_client :
  ?access_token_ttl:float prop ->
  ?assignments:string prop list ->
  ?client_type:string prop ->
  ?id:string prop ->
  ?id_token_ttl:float prop ->
  ?key:string prop ->
  ?namespace:string prop ->
  ?redirect_uris:string prop list ->
  name:string prop ->
  unit ->
  vault_identity_oidc_client

val yojson_of_vault_identity_oidc_client : vault_identity_oidc_client -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_token_ttl : float prop;
  assignments : string list prop;
  client_id : string prop;
  client_secret : string prop;
  client_type : string prop;
  id : string prop;
  id_token_ttl : float prop;
  key : string prop;
  name : string prop;
  namespace : string prop;
  redirect_uris : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_token_ttl:float prop ->
  ?assignments:string prop list ->
  ?client_type:string prop ->
  ?id:string prop ->
  ?id_token_ttl:float prop ->
  ?key:string prop ->
  ?namespace:string prop ->
  ?redirect_uris:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?access_token_ttl:float prop ->
  ?assignments:string prop list ->
  ?client_type:string prop ->
  ?id:string prop ->
  ?id_token_ttl:float prop ->
  ?key:string prop ->
  ?namespace:string prop ->
  ?redirect_uris:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
