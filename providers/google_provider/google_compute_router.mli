(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_router__bgp__advertised_ip_ranges
type google_compute_router__bgp
type google_compute_router__timeouts
type google_compute_router

val google_compute_router :
  ?description:string prop ->
  ?encrypted_interconnect_router:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_router__timeouts ->
  name:string prop ->
  network:string prop ->
  bgp:google_compute_router__bgp list ->
  string ->
  unit
