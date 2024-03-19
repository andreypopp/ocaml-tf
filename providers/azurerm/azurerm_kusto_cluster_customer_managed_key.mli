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

type azurerm_kusto_cluster_customer_managed_key

val azurerm_kusto_cluster_customer_managed_key :
  ?id:string prop ->
  ?key_version:string prop ->
  ?user_identity:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  key_name:string prop ->
  key_vault_id:string prop ->
  unit ->
  azurerm_kusto_cluster_customer_managed_key

val yojson_of_azurerm_kusto_cluster_customer_managed_key :
  azurerm_kusto_cluster_customer_managed_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_id : string prop;
  id : string prop;
  key_name : string prop;
  key_vault_id : string prop;
  key_version : string prop;
  user_identity : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_version:string prop ->
  ?user_identity:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  key_name:string prop ->
  key_vault_id:string prop ->
  string ->
  t
