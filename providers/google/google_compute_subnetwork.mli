(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secondary_ip_range = {
  ip_cidr_range : string prop;  (** ip_cidr_range *)
  range_name : string prop;  (** range_name *)
}

type log_config

val log_config :
  ?aggregation_interval:string prop ->
  ?filter_expr:string prop ->
  ?flow_sampling:float prop ->
  ?metadata:string prop ->
  ?metadata_fields:string prop list ->
  unit ->
  log_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_subnetwork

val google_compute_subnetwork :
  ?description:string prop ->
  ?external_ipv6_prefix:string prop ->
  ?id:string prop ->
  ?ipv6_access_type:string prop ->
  ?private_ip_google_access:bool prop ->
  ?private_ipv6_google_access:string prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?role:string prop ->
  ?secondary_ip_range:secondary_ip_range list ->
  ?stack_type:string prop ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  network:string prop ->
  unit ->
  google_compute_subnetwork

val yojson_of_google_compute_subnetwork :
  google_compute_subnetwork -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  external_ipv6_prefix : string prop;
  fingerprint : string prop;
  gateway_address : string prop;
  id : string prop;
  internal_ipv6_prefix : string prop;
  ip_cidr_range : string prop;
  ipv6_access_type : string prop;
  ipv6_cidr_range : string prop;
  name : string prop;
  network : string prop;
  private_ip_google_access : bool prop;
  private_ipv6_google_access : string prop;
  project : string prop;
  purpose : string prop;
  region : string prop;
  role : string prop;
  secondary_ip_range : secondary_ip_range list prop;
  self_link : string prop;
  stack_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?external_ipv6_prefix:string prop ->
  ?id:string prop ->
  ?ipv6_access_type:string prop ->
  ?private_ip_google_access:bool prop ->
  ?private_ipv6_google_access:string prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?role:string prop ->
  ?secondary_ip_range:secondary_ip_range list ->
  ?stack_type:string prop ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?external_ipv6_prefix:string prop ->
  ?id:string prop ->
  ?ipv6_access_type:string prop ->
  ?private_ip_google_access:bool prop ->
  ?private_ipv6_google_access:string prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?role:string prop ->
  ?secondary_ip_range:secondary_ip_range list ->
  ?stack_type:string prop ->
  ?log_config:log_config list ->
  ?timeouts:timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  network:string prop ->
  string ->
  t Tf_core.resource
