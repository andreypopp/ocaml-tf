(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_vpn_gateway__timeouts
type google_compute_vpn_gateway

val google_compute_vpn_gateway :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_vpn_gateway__timeouts ->
  name:string prop ->
  network:string prop ->
  string ->
  unit
