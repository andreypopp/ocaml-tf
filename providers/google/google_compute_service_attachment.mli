(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type connected_endpoints = {
  endpoint : string prop;  (** endpoint *)
  status : string prop;  (** status *)
}

type consumer_accept_lists

val consumer_accept_lists :
  ?network_url:string prop ->
  ?project_id_or_num:string prop ->
  connection_limit:float prop ->
  unit ->
  consumer_accept_lists

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_service_attachment

val google_compute_service_attachment :
  ?consumer_reject_lists:string prop list ->
  ?description:string prop ->
  ?domain_names:string prop list ->
  ?id:string prop ->
  ?project:string prop ->
  ?reconcile_connections:bool prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  connection_preference:string prop ->
  enable_proxy_protocol:bool prop ->
  name:string prop ->
  nat_subnets:string prop list ->
  target_service:string prop ->
  consumer_accept_lists:consumer_accept_lists list ->
  unit ->
  google_compute_service_attachment

val yojson_of_google_compute_service_attachment :
  google_compute_service_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  connected_endpoints : connected_endpoints list prop;
  connection_preference : string prop;
  consumer_reject_lists : string list prop;
  description : string prop;
  domain_names : string list prop;
  enable_proxy_protocol : bool prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  nat_subnets : string list prop;
  project : string prop;
  reconcile_connections : bool prop;
  region : string prop;
  self_link : string prop;
  target_service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?consumer_reject_lists:string prop list ->
  ?description:string prop ->
  ?domain_names:string prop list ->
  ?id:string prop ->
  ?project:string prop ->
  ?reconcile_connections:bool prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  connection_preference:string prop ->
  enable_proxy_protocol:bool prop ->
  name:string prop ->
  nat_subnets:string prop list ->
  target_service:string prop ->
  consumer_accept_lists:consumer_accept_lists list ->
  string ->
  t
