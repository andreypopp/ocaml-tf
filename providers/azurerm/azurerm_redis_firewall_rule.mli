(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_firewall_rule__timeouts
type azurerm_redis_firewall_rule

type t = private {
  end_ip : string prop;
  id : string prop;
  name : string prop;
  redis_cache_name : string prop;
  resource_group_name : string prop;
  start_ip : string prop;
}

val azurerm_redis_firewall_rule :
  ?id:string prop ->
  ?timeouts:azurerm_redis_firewall_rule__timeouts ->
  end_ip:string prop ->
  name:string prop ->
  redis_cache_name:string prop ->
  resource_group_name:string prop ->
  start_ip:string prop ->
  string ->
  t
