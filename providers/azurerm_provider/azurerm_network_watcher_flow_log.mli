(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_watcher_flow_log__retention_policy
type azurerm_network_watcher_flow_log__timeouts
type azurerm_network_watcher_flow_log__traffic_analytics
type azurerm_network_watcher_flow_log

val azurerm_network_watcher_flow_log :
  ?id:string prop ->
  ?location:string prop ->
  ?tags:(string * string prop) list ->
  ?version:float prop ->
  ?timeouts:azurerm_network_watcher_flow_log__timeouts ->
  enabled:bool prop ->
  name:string prop ->
  network_security_group_id:string prop ->
  network_watcher_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  retention_policy:
    azurerm_network_watcher_flow_log__retention_policy list ->
  traffic_analytics:
    azurerm_network_watcher_flow_log__traffic_analytics list ->
  string ->
  unit
