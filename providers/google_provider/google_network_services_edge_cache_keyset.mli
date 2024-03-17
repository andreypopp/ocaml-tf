(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_services_edge_cache_keyset__public_key
type google_network_services_edge_cache_keyset__timeouts
type google_network_services_edge_cache_keyset__validation_shared_keys
type google_network_services_edge_cache_keyset

val google_network_services_edge_cache_keyset :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_network_services_edge_cache_keyset__timeouts ->
  name:string ->
  public_key:
    google_network_services_edge_cache_keyset__public_key list ->
  validation_shared_keys:
    google_network_services_edge_cache_keyset__validation_shared_keys
    list ->
  string ->
  unit
