(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_vpn_gateway__timeouts
type google_compute_vpn_gateway

val google_compute_vpn_gateway :
  ?description:string ->
  ?id:string ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_compute_vpn_gateway__timeouts ->
  name:string ->
  network:string ->
  string ->
  unit
