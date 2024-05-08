(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bgp__advertised_ip_ranges = {
  description : string prop;  (** description *)
  range : string prop;  (** range *)
}

type bgp = {
  advertise_mode : string prop;  (** advertise_mode *)
  advertised_groups : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** advertised_groups *)
  advertised_ip_ranges : bgp__advertised_ip_ranges list;
      [@default []] [@yojson_drop_default ( = )]
      (** advertised_ip_ranges *)
  asn : float prop;  (** asn *)
  keepalive_interval : float prop;  (** keepalive_interval *)
}

type google_compute_router

val google_compute_router :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_compute_router

val yojson_of_google_compute_router : google_compute_router -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bgp : bgp list prop;
  creation_timestamp : string prop;
  description : string prop;
  encrypted_interconnect_router : bool prop;
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
  network:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t Tf_core.resource
