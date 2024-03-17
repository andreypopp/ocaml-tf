(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_services_edge_cache_keyset__public_key
type google_network_services_edge_cache_keyset__timeouts
type google_network_services_edge_cache_keyset__validation_shared_keys
type google_network_services_edge_cache_keyset

type t = private {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val google_network_services_edge_cache_keyset :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_network_services_edge_cache_keyset__timeouts ->
  name:string prop ->
  public_key:
    google_network_services_edge_cache_keyset__public_key list ->
  validation_shared_keys:
    google_network_services_edge_cache_keyset__validation_shared_keys
    list ->
  string ->
  t
