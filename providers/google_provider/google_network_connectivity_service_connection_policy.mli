(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_service_connection_policy__psc_config
type google_network_connectivity_service_connection_policy__timeouts

type google_network_connectivity_service_connection_policy__psc_connections__error_info = {
  domain : string prop;  (** domain *)
  metadata : (string * string prop) list;  (** metadata *)
  reason : string prop;  (** reason *)
}

type google_network_connectivity_service_connection_policy__psc_connections__error = {
  code : float prop;  (** code *)
  details : (string * string prop) list list;  (** details *)
  message : string prop;  (** message *)
}

type google_network_connectivity_service_connection_policy__psc_connections = {
  consumer_address : string prop;  (** consumer_address *)
  consumer_forwarding_rule : string prop;
      (** consumer_forwarding_rule *)
  consumer_target_project : string prop;
      (** consumer_target_project *)
  error :
    google_network_connectivity_service_connection_policy__psc_connections__error
    list;
      (** error *)
  error_info :
    google_network_connectivity_service_connection_policy__psc_connections__error_info
    list;
      (** error_info *)
  error_type : string prop;  (** error_type *)
  gce_operation : string prop;  (** gce_operation *)
  psc_connection_id : string prop;  (** psc_connection_id *)
  state : string prop;  (** state *)
}

type google_network_connectivity_service_connection_policy

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  infrastructure : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  psc_connections :
    google_network_connectivity_service_connection_policy__psc_connections
    list
    prop;
  service_class : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_network_connectivity_service_connection_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:
    google_network_connectivity_service_connection_policy__timeouts ->
  location:string prop ->
  name:string prop ->
  network:string prop ->
  service_class:string prop ->
  psc_config:
    google_network_connectivity_service_connection_policy__psc_config
    list ->
  string ->
  t
