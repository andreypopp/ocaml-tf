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

type azurerm_log_analytics_storage_insights

val azurerm_log_analytics_storage_insights :
  ?blob_container_names:string prop list ->
  ?id:string prop ->
  ?table_names:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_log_analytics_storage_insights

val yojson_of_azurerm_log_analytics_storage_insights :
  azurerm_log_analytics_storage_insights -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  blob_container_names : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  table_names : string list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?blob_container_names:string prop list ->
  ?id:string prop ->
  ?table_names:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?blob_container_names:string prop list ->
  ?id:string prop ->
  ?table_names:string prop list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
