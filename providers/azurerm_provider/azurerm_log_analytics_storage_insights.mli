(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_storage_insights__timeouts
type azurerm_log_analytics_storage_insights

val azurerm_log_analytics_storage_insights :
  ?blob_container_names:string prop list ->
  ?id:string prop ->
  ?table_names:string prop list ->
  ?timeouts:azurerm_log_analytics_storage_insights__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  workspace_id:string prop ->
  string ->
  unit
