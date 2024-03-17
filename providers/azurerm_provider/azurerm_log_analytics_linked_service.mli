(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_linked_service__timeouts
type azurerm_log_analytics_linked_service

val azurerm_log_analytics_linked_service :
  ?id:string prop ->
  ?read_access_id:string prop ->
  ?write_access_id:string prop ->
  ?timeouts:azurerm_log_analytics_linked_service__timeouts ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  string ->
  unit
