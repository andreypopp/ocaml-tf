(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network__timeouts
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
  ?timeouts:google_compute_network__timeouts ->
  name:string prop ->
  string ->
  unit
