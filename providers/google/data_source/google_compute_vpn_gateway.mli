(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_vpn_gateway

val google_compute_vpn_gateway :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_compute_vpn_gateway

val yojson_of_google_compute_vpn_gateway :
  google_compute_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
