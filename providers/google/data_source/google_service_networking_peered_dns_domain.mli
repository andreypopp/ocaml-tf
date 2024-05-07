(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_service_networking_peered_dns_domain

val google_service_networking_peered_dns_domain :
  ?id:string prop ->
  name:string prop ->
  network:string prop ->
  project:string prop ->
  service:string prop ->
  unit ->
  google_service_networking_peered_dns_domain

val yojson_of_google_service_networking_peered_dns_domain :
  google_service_networking_peered_dns_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dns_suffix : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  parent : string prop;
  project : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  network:string prop ->
  project:string prop ->
  service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  network:string prop ->
  project:string prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
