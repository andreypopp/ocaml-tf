(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cluster_customer_managed_key__timeouts
type azurerm_kusto_cluster_customer_managed_key

val azurerm_kusto_cluster_customer_managed_key :
  ?id:string prop ->
  ?key_version:string prop ->
  ?user_identity:string prop ->
  ?timeouts:azurerm_kusto_cluster_customer_managed_key__timeouts ->
  cluster_id:string prop ->
  key_name:string prop ->
  key_vault_id:string prop ->
  string ->
  unit
