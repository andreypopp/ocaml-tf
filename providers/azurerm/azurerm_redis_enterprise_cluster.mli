(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_redis_enterprise_cluster

val azurerm_redis_enterprise_cluster :
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_redis_enterprise_cluster

val yojson_of_azurerm_redis_enterprise_cluster :
  azurerm_redis_enterprise_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  hostname : string prop;
  id : string prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t Tf_core.resource
