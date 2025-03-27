(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_secrets_sync_github_apps

val vault_secrets_sync_github_apps :
  ?id:string prop ->
  ?namespace:string prop ->
  app_id:float prop ->
  name:string prop ->
  private_key:string prop ->
  unit ->
  vault_secrets_sync_github_apps

val yojson_of_vault_secrets_sync_github_apps : vault_secrets_sync_github_apps -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : float prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  private_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  app_id:float prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  app_id:float prop ->
  name:string prop ->
  private_key:string prop ->
  string ->
  t Tf_core.resource
