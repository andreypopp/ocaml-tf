(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_linked_storage_account__timeouts
type azurerm_log_analytics_linked_storage_account

val azurerm_log_analytics_linked_storage_account :
  ?id:string ->
  ?timeouts:azurerm_log_analytics_linked_storage_account__timeouts ->
  data_source_type:string ->
  resource_group_name:string ->
  storage_account_ids:string list ->
  workspace_resource_id:string ->
  string ->
  unit
