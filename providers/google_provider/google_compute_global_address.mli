(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_address__timeouts
type google_compute_global_address

val google_compute_global_address :
  ?address:string prop ->
  ?address_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?network:string prop ->
  ?prefix_length:float prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?timeouts:google_compute_global_address__timeouts ->
  name:string prop ->
  string ->
  unit
