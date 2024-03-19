(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type custom_header

val custom_header :
  name:string prop -> value:string prop -> unit -> custom_header

type subnet

val subnet :
  ?last:string prop ->
  ?scope:float prop ->
  first:string prop ->
  unit ->
  subnet

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_traffic_manager_nested_endpoint

val azurerm_traffic_manager_nested_endpoint :
  ?enabled:bool prop ->
  ?endpoint_location:string prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?minimum_required_child_endpoints_ipv4:float prop ->
  ?minimum_required_child_endpoints_ipv6:float prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:timeouts ->
  minimum_child_endpoints:float prop ->
  name:string prop ->
  profile_id:string prop ->
  target_resource_id:string prop ->
  custom_header:custom_header list ->
  subnet:subnet list ->
  unit ->
  azurerm_traffic_manager_nested_endpoint

val yojson_of_azurerm_traffic_manager_nested_endpoint :
  azurerm_traffic_manager_nested_endpoint -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?endpoint_location:string prop ->
  ?geo_mappings:string prop list ->
  ?id:string prop ->
  ?minimum_required_child_endpoints_ipv4:float prop ->
  ?minimum_required_child_endpoints_ipv6:float prop ->
  ?priority:float prop ->
  ?weight:float prop ->
  ?timeouts:timeouts ->
  minimum_child_endpoints:float prop ->
  name:string prop ->
  profile_id:string prop ->
  target_resource_id:string prop ->
  custom_header:custom_header list ->
  subnet:subnet list ->
  string ->
  t
