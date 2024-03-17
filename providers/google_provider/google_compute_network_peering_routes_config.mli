(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_network_peering_routes_config__timeouts
type google_compute_network_peering_routes_config

val google_compute_network_peering_routes_config :
  ?id:string ->
  ?project:string ->
  ?timeouts:google_compute_network_peering_routes_config__timeouts ->
  export_custom_routes:bool ->
  import_custom_routes:bool ->
  network:string ->
  peering:string ->
  string ->
  unit
