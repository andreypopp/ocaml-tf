(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_ha_vpn_gateway__timeouts
type google_compute_ha_vpn_gateway__vpn_interfaces
type google_compute_ha_vpn_gateway

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  stack_type : string prop;
}

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
  t
