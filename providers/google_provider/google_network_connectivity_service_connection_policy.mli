(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_connectivity_service_connection_policy__psc_config
type google_network_connectivity_service_connection_policy__timeouts

type google_network_connectivity_service_connection_policy__psc_connections__error_info = {
  domain : string;  (** domain *)
  metadata : (string * string) list;  (** metadata *)
  reason : string;  (** reason *)
}
[@@deriving yojson_of]

type google_network_connectivity_service_connection_policy__psc_connections__error = {
  code : float;  (** code *)
  details : (string * string) list list;  (** details *)
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_network_connectivity_service_connection_policy__psc_connections = {
  consumer_address : string;  (** consumer_address *)
  consumer_forwarding_rule : string;  (** consumer_forwarding_rule *)
  consumer_target_project : string;  (** consumer_target_project *)
  error :
    google_network_connectivity_service_connection_policy__psc_connections__error
    list;
      (** error *)
  error_info :
    google_network_connectivity_service_connection_policy__psc_connections__error_info
    list;
      (** error_info *)
  error_type : string;  (** error_type *)
  gce_operation : string;  (** gce_operation *)
  psc_connection_id : string;  (** psc_connection_id *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_network_connectivity_service_connection_policy

val google_network_connectivity_service_connection_policy :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:
    google_network_connectivity_service_connection_policy__timeouts ->
  location:string ->
  name:string ->
  network:string ->
  service_class:string ->
  psc_config:
    google_network_connectivity_service_connection_policy__psc_config
    list ->
  string ->
  unit
