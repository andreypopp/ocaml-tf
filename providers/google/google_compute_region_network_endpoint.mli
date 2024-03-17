(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_network_endpoint__timeouts
type google_compute_region_network_endpoint

type t = private {
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  port : float prop;
  project : string prop;
  region : string prop;
  region_network_endpoint_group : string prop;
}

val google_compute_region_network_endpoint :
  ?fqdn:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_region_network_endpoint__timeouts ->
  port:float prop ->
  region_network_endpoint_group:string prop ->
  string ->
  t
