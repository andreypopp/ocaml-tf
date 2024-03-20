(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secondary_ip_range = {
  ip_cidr_range : string prop;  (** ip_cidr_range *)
  range_name : string prop;  (** range_name *)
}

type google_compute_subnetwork

val google_compute_subnetwork :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  unit ->
  google_compute_subnetwork

val yojson_of_google_compute_subnetwork :
  google_compute_subnetwork -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  gateway_address : string prop;
  id : string prop;
  internal_ipv6_prefix : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  network : string prop;
  private_ip_google_access : bool prop;
  project : string prop;
  region : string prop;
  secondary_ip_range : secondary_ip_range list prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  string ->
  t Tf_core.resource
