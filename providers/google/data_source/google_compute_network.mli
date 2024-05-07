(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_network

val google_compute_network :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_compute_network

val yojson_of_google_compute_network : google_compute_network -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  gateway_ipv4 : string prop;
  id : string prop;
  internal_ipv6_range : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  subnetworks_self_links : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
