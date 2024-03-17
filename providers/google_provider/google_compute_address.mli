(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_address__timeouts
type google_compute_address

val google_compute_address :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?ipv6_endpoint_type:string prop ->
  ?labels:(string * string prop) list ->
  ?network:string prop ->
  ?network_tier:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?subnetwork:string prop ->
  ?timeouts:google_compute_address__timeouts ->
  name:string prop ->
  string ->
  unit
