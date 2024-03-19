(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_redis_firewall_rule

val azurerm_redis_firewall_rule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  end_ip:string prop ->
  name:string prop ->
  redis_cache_name:string prop ->
  resource_group_name:string prop ->
  start_ip:string prop ->
  unit ->
  azurerm_redis_firewall_rule

val yojson_of_azurerm_redis_firewall_rule :
  azurerm_redis_firewall_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  end_ip : string prop;
  id : string prop;
  name : string prop;
  redis_cache_name : string prop;
  resource_group_name : string prop;
  start_ip : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  end_ip:string prop ->
  name:string prop ->
  redis_cache_name:string prop ->
  resource_group_name:string prop ->
  start_ip:string prop ->
  string ->
  t
