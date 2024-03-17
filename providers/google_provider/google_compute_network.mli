(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network__timeouts
type google_compute_network

val google_compute_network :
  ?auto_create_subnetworks:bool ->
  ?delete_default_routes_on_create:bool ->
  ?description:string ->
  ?enable_ula_internal_ipv6:bool ->
  ?network_firewall_policy_enforcement_order:string ->
  ?timeouts:google_compute_network__timeouts ->
  name:string ->
  string ->
  unit
