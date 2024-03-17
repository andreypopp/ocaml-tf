(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_target_ssl_proxy__timeouts
type google_compute_target_ssl_proxy

type t = private {
  backend_service : string prop;
  certificate_map : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_header : string prop;
  proxy_id : float prop;
  self_link : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
}

val google_compute_target_ssl_proxy :
  ?certificate_map:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?proxy_header:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:google_compute_target_ssl_proxy__timeouts ->
  backend_service:string prop ->
  name:string prop ->
  string ->
  t
