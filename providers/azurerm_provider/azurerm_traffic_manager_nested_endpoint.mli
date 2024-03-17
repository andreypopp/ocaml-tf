(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_nested_endpoint__custom_header
type azurerm_traffic_manager_nested_endpoint__subnet
type azurerm_traffic_manager_nested_endpoint__timeouts
type azurerm_traffic_manager_nested_endpoint

val azurerm_traffic_manager_nested_endpoint :
  ?enabled:bool ->
  ?geo_mappings:string list ->
  ?minimum_required_child_endpoints_ipv4:float ->
  ?minimum_required_child_endpoints_ipv6:float ->
  ?timeouts:azurerm_traffic_manager_nested_endpoint__timeouts ->
  minimum_child_endpoints:float ->
  name:string ->
  profile_id:string ->
  target_resource_id:string ->
  custom_header:
    azurerm_traffic_manager_nested_endpoint__custom_header list ->
  subnet:azurerm_traffic_manager_nested_endpoint__subnet list ->
  string ->
  unit
