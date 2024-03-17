(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_external_vpn_gateway__interface
type google_compute_external_vpn_gateway__timeouts
type google_compute_external_vpn_gateway

val google_compute_external_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?redundancy_type:string prop ->
  ?timeouts:google_compute_external_vpn_gateway__timeouts ->
  name:string prop ->
  interface:google_compute_external_vpn_gateway__interface list ->
  string ->
  unit
