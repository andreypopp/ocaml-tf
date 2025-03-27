(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_key

val vault_identity_oidc_key :
  ?algorithm:string prop ->
  ?allowed_client_ids:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?verification_ttl:float prop ->
  name:string prop ->
  unit ->
  vault_identity_oidc_key

val yojson_of_vault_identity_oidc_key : vault_identity_oidc_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  algorithm : string prop;
  allowed_client_ids : string list prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  rotation_period : float prop;
  verification_ttl : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?algorithm:string prop ->
  ?allowed_client_ids:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?verification_ttl:float prop ->
  name:string prop ->
  string ->
  t

val make :
  ?algorithm:string prop ->
  ?allowed_client_ids:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?rotation_period:float prop ->
  ?verification_ttl:float prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
