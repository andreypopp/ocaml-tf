(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_ha_vpn_gateway__timeouts
type google_compute_ha_vpn_gateway__vpn_interfaces
type google_compute_ha_vpn_gateway

val google_compute_ha_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?stack_type:string prop ->
  ?timeouts:google_compute_ha_vpn_gateway__timeouts ->
  name:string prop ->
  network:string prop ->
  vpn_interfaces:google_compute_ha_vpn_gateway__vpn_interfaces list ->
  string ->
  unit
