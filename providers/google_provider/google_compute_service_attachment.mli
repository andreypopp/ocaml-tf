(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_service_attachment__consumer_accept_lists
type google_compute_service_attachment__timeouts

type google_compute_service_attachment__connected_endpoints = {
  endpoint : string prop;  (** endpoint *)
  status : string prop;  (** status *)
}

type google_compute_service_attachment

val google_compute_service_attachment :
  ?consumer_reject_lists:string prop list ->
  ?description:string prop ->
  ?domain_names:string prop list ->
  ?id:string prop ->
  ?project:string prop ->
  ?reconcile_connections:bool prop ->
  ?region:string prop ->
  ?timeouts:google_compute_service_attachment__timeouts ->
  connection_preference:string prop ->
  enable_proxy_protocol:bool prop ->
  name:string prop ->
  nat_subnets:string prop list ->
  target_service:string prop ->
  consumer_accept_lists:
    google_compute_service_attachment__consumer_accept_lists list ->
  string ->
  unit
