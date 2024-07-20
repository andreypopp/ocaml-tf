(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connection_endpoints = {
  ip_address : string prop;  (** ip_address *)
  project_id_or_num : string prop;  (** project_id_or_num *)
  secondary_ip_cidr_ranges : string prop;
      (** secondary_ip_cidr_ranges *)
  status : string prop;  (** status *)
  subnetwork : string prop;  (** subnetwork *)
}

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_network_attachment

val google_compute_network_attachment :
  ?description:string prop ->
  ?producer_accept_lists:string prop list ->
  ?producer_reject_lists:string prop list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  connection_preference:string prop ->
  name:string prop ->
  subnetworks:string prop list ->
  unit ->
  google_compute_network_attachment

val yojson_of_google_compute_network_attachment :
  google_compute_network_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_endpoints : connection_endpoints list prop;
  connection_preference : string prop;
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  network : string prop;
  producer_accept_lists : string list prop;
  producer_reject_lists : string list prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  self_link_with_id : string prop;
  subnetworks : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?producer_accept_lists:string prop list ->
  ?producer_reject_lists:string prop list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  connection_preference:string prop ->
  name:string prop ->
  subnetworks:string prop list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?producer_accept_lists:string prop list ->
  ?producer_reject_lists:string prop list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  connection_preference:string prop ->
  name:string prop ->
  subnetworks:string prop list ->
  string ->
  t Tf_core.resource
