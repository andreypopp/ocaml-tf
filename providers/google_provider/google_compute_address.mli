(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_address__timeouts
type google_compute_address

val google_compute_address :
  ?address_type:string ->
  ?description:string ->
  ?ip_version:string ->
  ?ipv6_endpoint_type:string ->
  ?labels:(string * string) list ->
  ?network:string ->
  ?timeouts:google_compute_address__timeouts ->
  name:string ->
  string ->
  unit
