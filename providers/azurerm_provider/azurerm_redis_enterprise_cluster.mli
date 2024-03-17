(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_enterprise_cluster__timeouts
type azurerm_redis_enterprise_cluster

val azurerm_redis_enterprise_cluster :
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_redis_enterprise_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  unit
