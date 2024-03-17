(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dashboard_grafana__azure_monitor_workspace_integrations
type azurerm_dashboard_grafana__identity
type azurerm_dashboard_grafana__smtp
type azurerm_dashboard_grafana__timeouts
type azurerm_dashboard_grafana

val azurerm_dashboard_grafana :
  ?api_key_enabled:bool prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?deterministic_outbound_ip_enabled:bool prop ->
  ?grafana_major_version:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundancy_enabled:bool prop ->
  ?timeouts:azurerm_dashboard_grafana__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  azure_monitor_workspace_integrations:
    azurerm_dashboard_grafana__azure_monitor_workspace_integrations
    list ->
  identity:azurerm_dashboard_grafana__identity list ->
  smtp:azurerm_dashboard_grafana__smtp list ->
  string ->
  unit
