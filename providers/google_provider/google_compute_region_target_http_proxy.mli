(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_target_http_proxy__timeouts
type google_compute_region_target_http_proxy

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
  url_map : string prop;
}

val google_compute_region_target_http_proxy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_region_target_http_proxy__timeouts ->
  name:string prop ->
  url_map:string prop ->
  string ->
  t
