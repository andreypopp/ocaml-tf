(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_firewall_rule__timeouts
type azurerm_redis_firewall_rule

val azurerm_redis_firewall_rule :
  ?timeouts:azurerm_redis_firewall_rule__timeouts ->
  end_ip:string ->
  name:string ->
  redis_cache_name:string ->
  resource_group_name:string ->
  start_ip:string ->
  string ->
  unit
