(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_address__timeouts
type google_compute_global_address

val google_compute_global_address :
  ?address:string ->
  ?address_type:string ->
  ?description:string ->
  ?id:string ->
  ?ip_version:string ->
  ?network:string ->
  ?prefix_length:float ->
  ?project:string ->
  ?purpose:string ->
  ?timeouts:google_compute_global_address__timeouts ->
  name:string ->
  string ->
  unit
