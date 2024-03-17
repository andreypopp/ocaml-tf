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
  backend_pool_health_probe_ids : string prop list;
      (** backend_pool_health_probe_ids *)
  backend_pool_ids : string prop list;  (** backend_pool_ids *)
  backend_pool_load_balancing_ids : string prop list;
      (** backend_pool_load_balancing_ids *)
  frontend_endpoint_ids : string prop list;
      (** frontend_endpoint_ids *)
  routing_rule_ids : string prop list;  (** routing_rule_ids *)
}

type azurerm_frontdoor

type t = private {
  backend_pool_health_probes : (string * string) list prop;
  backend_pool_load_balancing_settings : (string * string) list prop;
  backend_pools : (string * string) list prop;
  cname : string prop;
  explicit_resource_order :
    azurerm_frontdoor__explicit_resource_order list prop;
  friendly_name : string prop;
  frontend_endpoints : (string * string) list prop;
  header_frontdoor_id : string prop;
  id : string prop;
  load_balancer_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  routing_rules : (string * string) list prop;
  tags : (string * string) list prop;
}

val azurerm_frontdoor :
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?load_balancer_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_frontdoor__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  backend_pool:azurerm_frontdoor__backend_pool list ->
  backend_pool_health_probe:
    azurerm_frontdoor__backend_pool_health_probe list ->
  backend_pool_load_balancing:
    azurerm_frontdoor__backend_pool_load_balancing list ->
  backend_pool_settings:azurerm_frontdoor__backend_pool_settings list ->
  frontend_endpoint:azurerm_frontdoor__frontend_endpoint list ->
  routing_rule:azurerm_frontdoor__routing_rule list ->
  string ->
  t
