(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_enterprise_cluster__timeouts
type azurerm_redis_enterprise_cluster

val azurerm_redis_enterprise_cluster :
  ?id:string ->
  ?minimum_tls_version:string ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_redis_enterprise_cluster__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  string ->
  unit
