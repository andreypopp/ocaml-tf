(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_frontdoor__backend_pool__backend
type azurerm_frontdoor__backend_pool
type azurerm_frontdoor__backend_pool_health_probe
type azurerm_frontdoor__backend_pool_load_balancing
type azurerm_frontdoor__backend_pool_settings
type azurerm_frontdoor__frontend_endpoint
type azurerm_frontdoor__routing_rule__forwarding_configuration
type azurerm_frontdoor__routing_rule__redirect_configuration
type azurerm_frontdoor__routing_rule
type azurerm_frontdoor__timeouts

type azurerm_frontdoor__explicit_resource_order = {
  backend_pool_health_probe_ids : string list;
      (** backend_pool_health_probe_ids *)
  backend_pool_ids : string list;  (** backend_pool_ids *)
  backend_pool_load_balancing_ids : string list;
      (** backend_pool_load_balancing_ids *)
  frontend_endpoint_ids : string list;  (** frontend_endpoint_ids *)
  routing_rule_ids : string list;  (** routing_rule_ids *)
}
[@@deriving yojson_of]

type azurerm_frontdoor

val azurerm_frontdoor :
  ?friendly_name:string ->
  ?load_balancer_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_frontdoor__timeouts ->
  name:string ->
  resource_group_name:string ->
  backend_pool:azurerm_frontdoor__backend_pool list ->
  backend_pool_health_probe:
    azurerm_frontdoor__backend_pool_health_probe list ->
  backend_pool_load_balancing:
    azurerm_frontdoor__backend_pool_load_balancing list ->
  backend_pool_settings:azurerm_frontdoor__backend_pool_settings list ->
  frontend_endpoint:azurerm_frontdoor__frontend_endpoint list ->
  routing_rule:azurerm_frontdoor__routing_rule list ->
  string ->
  unit
