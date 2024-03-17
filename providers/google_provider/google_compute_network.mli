(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network__timeouts
type google_compute_network

val google_compute_network :
  ?auto_create_subnetworks:bool ->
  ?delete_default_routes_on_create:bool ->
  ?description:string ->
  ?enable_ula_internal_ipv6:bool ->
  ?id:string ->
  ?internal_ipv6_range:string ->
  ?mtu:float ->
  ?network_firewall_policy_enforcement_order:string ->
  ?project:string ->
  ?routing_mode:string ->
  ?timeouts:google_compute_network__timeouts ->
  name:string ->
  string ->
  unit
