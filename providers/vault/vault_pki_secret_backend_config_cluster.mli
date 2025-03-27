(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_config_cluster

val vault_pki_secret_backend_config_cluster :
  ?aia_path:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  backend:string prop ->
  unit ->
  vault_pki_secret_backend_config_cluster

val yojson_of_vault_pki_secret_backend_config_cluster : vault_pki_secret_backend_config_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aia_path : string prop;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?aia_path:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  backend:string prop ->
  string ->
  t

val make :
  ?aia_path:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?path:string prop ->
  backend:string prop ->
  string ->
  t Tf_core.resource
