(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_watcher_flow_log__retention_policy
type azurerm_network_watcher_flow_log__timeouts
type azurerm_network_watcher_flow_log__traffic_analytics
type azurerm_network_watcher_flow_log

val azurerm_network_watcher_flow_log :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_watcher_flow_log__timeouts ->
  enabled:bool ->
  name:string ->
  network_security_group_id:string ->
  network_watcher_name:string ->
  resource_group_name:string ->
  storage_account_id:string ->
  retention_policy:
    azurerm_network_watcher_flow_log__retention_policy list ->
  traffic_analytics:
    azurerm_network_watcher_flow_log__traffic_analytics list ->
  string ->
  unit
