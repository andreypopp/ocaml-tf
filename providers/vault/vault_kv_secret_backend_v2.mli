(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kv_secret_backend_v2

val vault_kv_secret_backend_v2 :
  ?cas_required:bool prop ->
  ?delete_version_after:float prop ->
  ?id:string prop ->
  ?max_versions:float prop ->
  ?namespace:string prop ->
  mount:string prop ->
  unit ->
  vault_kv_secret_backend_v2

val yojson_of_vault_kv_secret_backend_v2 : vault_kv_secret_backend_v2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cas_required : bool prop;
  delete_version_after : float prop;
  id : string prop;
  max_versions : float prop;
  mount : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cas_required:bool prop ->
  ?delete_version_after:float prop ->
  ?id:string prop ->
  ?max_versions:float prop ->
  ?namespace:string prop ->
  mount:string prop ->
  string ->
  t

val make :
  ?cas_required:bool prop ->
  ?delete_version_after:float prop ->
  ?id:string prop ->
  ?max_versions:float prop ->
  ?namespace:string prop ->
  mount:string prop ->
  string ->
  t Tf_core.resource
