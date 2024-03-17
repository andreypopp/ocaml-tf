(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_networking_peered_dns_domain__timeouts
type google_service_networking_peered_dns_domain

type t = private {
  dns_suffix : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  parent : string prop;
  project : string prop;
  service : string prop;
}

val google_service_networking_peered_dns_domain :
  ?id:string prop ->
  ?project:string prop ->
  ?service:string prop ->
  ?timeouts:google_service_networking_peered_dns_domain__timeouts ->
  dns_suffix:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t
