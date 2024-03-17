(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_service_attachment__consumer_accept_lists
type google_compute_service_attachment__timeouts

type google_compute_service_attachment__connected_endpoints = {
  endpoint : string;  (** endpoint *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type google_compute_service_attachment

val google_compute_service_attachment :
  ?consumer_reject_lists:string list ->
  ?description:string ->
  ?domain_names:string list ->
  ?timeouts:google_compute_service_attachment__timeouts ->
  connection_preference:string ->
  enable_proxy_protocol:bool ->
  name:string ->
  nat_subnets:string list ->
  target_service:string ->
  consumer_accept_lists:
    google_compute_service_attachment__consumer_accept_lists list ->
  string ->
  unit
