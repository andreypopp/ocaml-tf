(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type psc_connections__error_info = {
  domain : string prop;  (** domain *)
  metadata : string prop Tf_core.assoc;  (** metadata *)
  reason : string prop;  (** reason *)
}

type psc_connections__error = {
  code : float prop;  (** code *)
  details : string prop Tf_core.assoc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** details *)
  message : string prop;  (** message *)
}

type psc_connections = {
  consumer_address : string prop;  (** consumer_address *)
  consumer_forwarding_rule : string prop;
      (** consumer_forwarding_rule *)
  consumer_target_project : string prop;
      (** consumer_target_project *)
  error : psc_connections__error list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** error *)
  error_info : psc_connections__error_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** error_info *)
  error_type : string prop;  (** error_type *)
  gce_operation : string prop;  (** gce_operation *)
  psc_connection_id : string prop;  (** psc_connection_id *)
  state : string prop;  (** state *)
}

type psc_config

val psc_config :
  ?limit:string prop ->
  subnetworks:string prop list ->
  unit ->
  psc_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_connectivity_service_connection_policy

val google_network_connectivity_service_connection_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?psc_config:psc_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_class:string prop ->
  unit ->
  google_network_connectivity_service_connection_policy

val yojson_of_google_network_connectivity_service_connection_policy :
  google_network_connectivity_service_connection_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  infrastructure : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  psc_connections : psc_connections list prop;
  service_class : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?psc_config:psc_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_class:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?psc_config:psc_config list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_class:string prop ->
  string ->
  t Tf_core.resource
