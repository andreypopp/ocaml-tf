(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kv_secret_v2

val vault_kv_secret_v2 :
  ?id:string prop ->
  ?namespace:string prop ->
  ?version:float prop ->
  mount:string prop ->
  name:string prop ->
  unit ->
  vault_kv_secret_v2

val yojson_of_vault_kv_secret_v2 : vault_kv_secret_v2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_time : string prop;
  custom_metadata : string Tf_core.assoc prop;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  deletion_time : string prop;
  destroyed : bool prop;
  id : string prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?version:float prop ->
  mount:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?version:float prop ->
  mount:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
