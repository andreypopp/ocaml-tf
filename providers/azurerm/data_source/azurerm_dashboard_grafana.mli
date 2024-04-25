(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_monitor_workspace_integrations = {
  resource_id : string prop;  (** resource_id *)
}

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_dashboard_grafana

val azurerm_dashboard_grafana :
  ?id:string prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_dashboard_grafana

val yojson_of_azurerm_dashboard_grafana :
  azurerm_dashboard_grafana -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_key_enabled : bool prop;
  auto_generated_domain_name_label_scope : string prop;
  azure_monitor_workspace_integrations :
    azure_monitor_workspace_integrations list prop;
  deterministic_outbound_ip_enabled : bool prop;
  endpoint : string prop;
  grafana_major_version : string prop;
  grafana_version : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ips : string list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundancy_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
