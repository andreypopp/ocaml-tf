(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_external_vpn_gateway__interface
type google_compute_external_vpn_gateway__timeouts
type google_compute_external_vpn_gateway

val google_compute_external_vpn_gateway :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?redundancy_type:string ->
  ?timeouts:google_compute_external_vpn_gateway__timeouts ->
  name:string ->
  interface:google_compute_external_vpn_gateway__interface list ->
  string ->
  unit
