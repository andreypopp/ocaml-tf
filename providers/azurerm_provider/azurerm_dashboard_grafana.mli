(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dashboard_grafana__azure_monitor_workspace_integrations
type azurerm_dashboard_grafana__identity
type azurerm_dashboard_grafana__smtp
type azurerm_dashboard_grafana__timeouts
type azurerm_dashboard_grafana

val azurerm_dashboard_grafana :
  ?api_key_enabled:bool ->
  ?auto_generated_domain_name_label_scope:string ->
  ?deterministic_outbound_ip_enabled:bool ->
  ?grafana_major_version:string ->
  ?public_network_access_enabled:bool ->
  ?sku:string ->
  ?tags:(string * string) list ->
  ?zone_redundancy_enabled:bool ->
  ?timeouts:azurerm_dashboard_grafana__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  azure_monitor_workspace_integrations:
    azurerm_dashboard_grafana__azure_monitor_workspace_integrations
    list ->
  identity:azurerm_dashboard_grafana__identity list ->
  smtp:azurerm_dashboard_grafana__smtp list ->
  string ->
  unit
