(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_linked_storage_account__timeouts
type azurerm_log_analytics_linked_storage_account

type t = private {
  data_source_type : string prop;
  id : string prop;
  resource_group_name : string prop;
  storage_account_ids : string list prop;
  workspace_resource_id : string prop;
}

val azurerm_log_analytics_linked_storage_account :
  ?id:string prop ->
  ?timeouts:azurerm_log_analytics_linked_storage_account__timeouts ->
  data_source_type:string prop ->
  resource_group_name:string prop ->
  storage_account_ids:string prop list ->
  workspace_resource_id:string prop ->
  string ->
  t
