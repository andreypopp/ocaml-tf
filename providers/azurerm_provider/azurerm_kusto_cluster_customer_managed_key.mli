(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cluster_customer_managed_key__timeouts
type azurerm_kusto_cluster_customer_managed_key

val azurerm_kusto_cluster_customer_managed_key :
  ?id:string ->
  ?key_version:string ->
  ?user_identity:string ->
  ?timeouts:azurerm_kusto_cluster_customer_managed_key__timeouts ->
  cluster_id:string ->
  key_name:string ->
  key_vault_id:string ->
  string ->
  unit
