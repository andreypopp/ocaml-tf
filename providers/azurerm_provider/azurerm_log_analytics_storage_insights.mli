(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_storage_insights__timeouts
type azurerm_log_analytics_storage_insights

val azurerm_log_analytics_storage_insights :
  ?blob_container_names:string list ->
  ?table_names:string list ->
  ?timeouts:azurerm_log_analytics_storage_insights__timeouts ->
  name:string ->
  resource_group_name:string ->
  storage_account_id:string ->
  storage_account_key:string ->
  workspace_id:string ->
  string ->
  unit
