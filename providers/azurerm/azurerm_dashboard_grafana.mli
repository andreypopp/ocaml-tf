(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_monitor_workspace_integrations

val azure_monitor_workspace_integrations :
  resource_id:string prop ->
  unit ->
  azure_monitor_workspace_integrations

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type smtp

val smtp :
  ?enabled:bool prop ->
  ?from_name:string prop ->
  ?verification_skip_enabled:bool prop ->
  from_address:string prop ->
  host:string prop ->
  password:string prop ->
  start_tls_policy:string prop ->
  user:string prop ->
  unit ->
  smtp

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dashboard_grafana

val azurerm_dashboard_grafana :
  ?api_key_enabled:bool prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?deterministic_outbound_ip_enabled:bool prop ->
  ?grafana_major_version:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone_redundancy_enabled:bool prop ->
  ?azure_monitor_workspace_integrations:
    azure_monitor_workspace_integrations list ->
  ?identity:identity list ->
  ?smtp:smtp list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dashboard_grafana

val yojson_of_azurerm_dashboard_grafana :
  azurerm_dashboard_grafana -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key_enabled : bool prop;
  auto_generated_domain_name_label_scope : string prop;
  deterministic_outbound_ip_enabled : bool prop;
  endpoint : string prop;
  grafana_major_version : string prop;
  grafana_version : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ip : string list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
  zone_redundancy_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_key_enabled:bool prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?deterministic_outbound_ip_enabled:bool prop ->
  ?grafana_major_version:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone_redundancy_enabled:bool prop ->
  ?azure_monitor_workspace_integrations:
    azure_monitor_workspace_integrations list ->
  ?identity:identity list ->
  ?smtp:smtp list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?api_key_enabled:bool prop ->
  ?auto_generated_domain_name_label_scope:string prop ->
  ?deterministic_outbound_ip_enabled:bool prop ->
  ?grafana_major_version:string prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?sku:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?zone_redundancy_enabled:bool prop ->
  ?azure_monitor_workspace_integrations:
    azure_monitor_workspace_integrations list ->
  ?identity:identity list ->
  ?smtp:smtp list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
