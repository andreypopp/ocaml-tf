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

type azurerm_log_analytics_linked_storage_account

val azurerm_log_analytics_linked_storage_account :
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_source_type:string prop ->
  resource_group_name:string prop ->
  storage_account_ids:string prop list ->
  workspace_resource_id:string prop ->
  unit ->
  azurerm_log_analytics_linked_storage_account

val yojson_of_azurerm_log_analytics_linked_storage_account :
  azurerm_log_analytics_linked_storage_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_source_type : string prop;
  id : string prop;
  resource_group_name : string prop;
  storage_account_ids : string list prop;
  workspace_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_source_type:string prop ->
  resource_group_name:string prop ->
  storage_account_ids:string prop list ->
  workspace_resource_id:string prop ->
  string ->
  t
