(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_ha_vpn_gateway__timeouts
type google_compute_ha_vpn_gateway__vpn_interfaces
type google_compute_ha_vpn_gateway

val google_compute_ha_vpn_gateway :
  ?description:string ->
  ?stack_type:string ->
  ?timeouts:google_compute_ha_vpn_gateway__timeouts ->
  name:string ->
  network:string ->
  vpn_interfaces:google_compute_ha_vpn_gateway__vpn_interfaces list ->
  string ->
  unit
