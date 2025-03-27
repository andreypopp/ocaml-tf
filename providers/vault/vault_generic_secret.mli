(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_generic_secret

val vault_generic_secret :
  ?delete_all_versions:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  data_json:string prop ->
  path:string prop ->
  unit ->
  vault_generic_secret

val yojson_of_vault_generic_secret : vault_generic_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  delete_all_versions : bool prop;
  disable_read : bool prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delete_all_versions:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  data_json:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?delete_all_versions:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  data_json:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
