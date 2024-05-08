(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules__service_directory_registrations = {
  namespace : string prop;  (** namespace *)
  service : string prop;  (** service *)
}

type rules = {
  all_ports : bool prop;  (** all_ports *)
  allow_global_access : bool prop;  (** allow_global_access *)
  allow_psc_global_access : bool prop;
      (** allow_psc_global_access *)
  backend_service : string prop;  (** backend_service *)
  base_forwarding_rule : string prop;  (** base_forwarding_rule *)
  creation_timestamp : string prop;  (** creation_timestamp *)
  description : string prop;  (** description *)
  effective_labels : (string * string prop) list;
      (** effective_labels *)
  ip_address : string prop;  (** ip_address *)
  ip_protocol : string prop;  (** ip_protocol *)
  ip_version : string prop;  (** ip_version *)
  is_mirroring_collector : bool prop;  (** is_mirroring_collector *)
  label_fingerprint : string prop;  (** label_fingerprint *)
  labels : (string * string prop) list;  (** labels *)
  load_balancing_scheme : string prop;  (** load_balancing_scheme *)
  name : string prop;  (** name *)
  network : string prop;  (** network *)
  network_tier : string prop;  (** network_tier *)
  no_automate_dns_zone : bool prop;  (** no_automate_dns_zone *)
  port_range : string prop;  (** port_range *)
  ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ports *)
  project : string prop;  (** project *)
  psc_connection_id : string prop;  (** psc_connection_id *)
  psc_connection_status : string prop;  (** psc_connection_status *)
  recreate_closed_psc : bool prop;  (** recreate_closed_psc *)
  region : string prop;  (** region *)
  self_link : string prop;  (** self_link *)
  service_directory_registrations :
    rules__service_directory_registrations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** service_directory_registrations *)
  service_label : string prop;  (** service_label *)
  service_name : string prop;  (** service_name *)
  source_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_ip_ranges *)
  subnetwork : string prop;  (** subnetwork *)
  target : string prop;  (** target *)
  terraform_labels : (string * string prop) list;
      (** terraform_labels *)
}

type google_compute_forwarding_rules

val google_compute_forwarding_rules :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  unit ->
  google_compute_forwarding_rules

val yojson_of_google_compute_forwarding_rules :
  google_compute_forwarding_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  project : string prop;
  region : string prop;
  rules : rules list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
