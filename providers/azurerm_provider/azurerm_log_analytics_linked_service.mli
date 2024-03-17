(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_linked_service__timeouts
type azurerm_log_analytics_linked_service

val azurerm_log_analytics_linked_service :
  ?id:string ->
  ?read_access_id:string ->
  ?write_access_id:string ->
  ?timeouts:azurerm_log_analytics_linked_service__timeouts ->
  resource_group_name:string ->
  workspace_id:string ->
  string ->
  unit
