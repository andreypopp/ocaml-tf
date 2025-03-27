(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transit_secret_cache_config

val vault_transit_secret_cache_config :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  size:float prop ->
  unit ->
  vault_transit_secret_cache_config

val yojson_of_vault_transit_secret_cache_config : vault_transit_secret_cache_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  size : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  size:float prop ->
  string ->
  t

val make :
  ?id:string prop -> ?namespace:string prop -> backend:string prop -> size:float prop -> string -> t Tf_core.resource
