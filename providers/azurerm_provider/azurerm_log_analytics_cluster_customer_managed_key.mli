(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_cluster_customer_managed_key__timeouts
type azurerm_log_analytics_cluster_customer_managed_key

val azurerm_log_analytics_cluster_customer_managed_key :
  ?timeouts:
    azurerm_log_analytics_cluster_customer_managed_key__timeouts ->
  key_vault_key_id:string ->
  log_analytics_cluster_id:string ->
  string ->
  unit
