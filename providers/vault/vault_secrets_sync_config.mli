(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_secrets_sync_config

val vault_secrets_sync_config :
  ?disabled:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?queue_capacity:float prop ->
  unit ->
  vault_secrets_sync_config

val yojson_of_vault_secrets_sync_config : vault_secrets_sync_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  disabled : bool prop;
  id : string prop;
  namespace : string prop;
  queue_capacity : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?queue_capacity:float prop ->
  string ->
  t

val make :
  ?disabled:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?queue_capacity:float prop ->
  string ->
  t Tf_core.resource
