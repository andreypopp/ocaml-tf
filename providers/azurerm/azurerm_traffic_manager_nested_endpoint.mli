(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_traffic_manager_nested_endpoint__custom_header
type azurerm_traffic_manager_nested_endpoint__subnet
type azurerm_traffic_manager_nested_endpoint__timeouts
type azurerm_traffic_manager_nested_endpoint

type t = private {
  enabled : bool prop;
  endpoint_location : string prop;
  geo_mappings : string list prop;
  id : string prop;
  minimum_child_endpoints : float prop;
  minimum_required_child_endpoints_ipv4 : float prop;
  minimum_required_child_endpoints_ipv6 : float prop;
  name : string prop;
  priority : float prop;
  profile_id : string prop;
  target_resource_id : string prop;
  weight : float prop;
}

val azurerm_traffic_manager_nested_endpoint :
  ?enabled:bool prop ->
  ?endpoint_location:string prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?minimum_required_child_endpoints_ipv4:float prop ->
  ?minimum_required_child_endpoints_ipv6:float prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:azurerm_traffic_manager_nested_endpoint__timeouts ->
  minimum_child_endpoints:float prop ->
  name:string prop ->
  profile_id:string prop ->
  target_resource_id:string prop ->
  custom_header:
    azurerm_traffic_manager_nested_endpoint__custom_header list ->
  subnet:azurerm_traffic_manager_nested_endpoint__subnet list ->
  string ->
  t
