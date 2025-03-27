(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type custom_metadata

val custom_metadata :
  ?cas_required:bool prop ->
  ?data:string prop Tf_core.assoc ->
  ?delete_version_after:float prop ->
  ?max_versions:float prop ->
  unit ->
  custom_metadata

type vault_kv_secret_v2

val vault_kv_secret_v2 :
  ?cas:float prop ->
  ?delete_all_versions:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?custom_metadata:custom_metadata list ->
  data_json:string prop ->
  mount:string prop ->
  name:string prop ->
  unit ->
  vault_kv_secret_v2

val yojson_of_vault_kv_secret_v2 : vault_kv_secret_v2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cas : float prop;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  delete_all_versions : bool prop;
  disable_read : bool prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cas:float prop ->
  ?delete_all_versions:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?custom_metadata:custom_metadata list ->
  data_json:string prop ->
  mount:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?cas:float prop ->
  ?delete_all_versions:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?custom_metadata:custom_metadata list ->
  data_json:string prop ->
  mount:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
