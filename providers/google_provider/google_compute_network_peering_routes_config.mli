(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_peering_routes_config__timeouts
type google_compute_network_peering_routes_config

val google_compute_network_peering_routes_config :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_network_peering_routes_config__timeouts ->
  export_custom_routes:bool prop ->
  import_custom_routes:bool prop ->
  network:string prop ->
  peering:string prop ->
  string ->
  unit
