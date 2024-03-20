(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_network

val google_compute_network :
  ?auto_create_subnetworks:bool prop ->
  ?delete_default_routes_on_create:bool prop ->
  ?description:string prop ->
  ?enable_ula_internal_ipv6:bool prop ->
  ?id:string prop ->
  ?internal_ipv6_range:string prop ->
  ?mtu:float prop ->
  ?network_firewall_policy_enforcement_order:string prop ->
  ?project:string prop ->
  ?routing_mode:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_compute_network

val yojson_of_google_compute_network : google_compute_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_create_subnetworks : bool prop;
  delete_default_routes_on_create : bool prop;
  description : string prop;
  enable_ula_internal_ipv6 : bool prop;
  gateway_ipv4 : string prop;
  id : string prop;
  internal_ipv6_range : string prop;
  mtu : float prop;
  name : string prop;
  network_firewall_policy_enforcement_order : string prop;
  numeric_id : string prop;
  project : string prop;
  routing_mode : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_create_subnetworks:bool prop ->
  ?delete_default_routes_on_create:bool prop ->
  ?description:string prop ->
  ?enable_ula_internal_ipv6:bool prop ->
  ?id:string prop ->
  ?internal_ipv6_range:string prop ->
  ?mtu:float prop ->
  ?network_firewall_policy_enforcement_order:string prop ->
  ?project:string prop ->
  ?routing_mode:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?auto_create_subnetworks:bool prop ->
  ?delete_default_routes_on_create:bool prop ->
  ?description:string prop ->
  ?enable_ula_internal_ipv6:bool prop ->
  ?id:string prop ->
  ?internal_ipv6_range:string prop ->
  ?mtu:float prop ->
  ?network_firewall_policy_enforcement_order:string prop ->
  ?project:string prop ->
  ?routing_mode:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
