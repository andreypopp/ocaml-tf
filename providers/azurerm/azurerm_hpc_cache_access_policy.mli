(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type access_rule

val access_rule :
  ?anonymous_gid:float prop ->
  ?anonymous_uid:float prop ->
  ?filter:string prop ->
  ?root_squash_enabled:bool prop ->
  ?submount_access_enabled:bool prop ->
  ?suid_enabled:bool prop ->
  access:string prop ->
  scope:string prop ->
  unit ->
  access_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_hpc_cache_access_policy

val azurerm_hpc_cache_access_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  hpc_cache_id:string prop ->
  name:string prop ->
  access_rule:access_rule list ->
  unit ->
  azurerm_hpc_cache_access_policy

val yojson_of_azurerm_hpc_cache_access_policy :
  azurerm_hpc_cache_access_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hpc_cache_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  hpc_cache_id:string prop ->
  name:string prop ->
  access_rule:access_rule list ->
  string ->
  t
