(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type circuit_infos = {
  customer_demarc_id : string prop;  (** customer_demarc_id *)
  google_circuit_id : string prop;  (** google_circuit_id *)
  google_demarc_id : string prop;  (** google_demarc_id *)
}

type expected_outages = {
  affected_circuits : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** affected_circuits *)
  description : string prop;  (** description *)
  end_time : string prop;  (** end_time *)
  issue_type : string prop;  (** issue_type *)
  name : string prop;  (** name *)
  source : string prop;  (** source *)
  start_time : string prop;  (** start_time *)
  state : string prop;  (** state *)
}

type macsec__pre_shared_keys

val macsec__pre_shared_keys :
  ?fail_open:bool prop ->
  ?start_time:string prop ->
  name:string prop ->
  unit ->
  macsec__pre_shared_keys

type macsec

val macsec :
  pre_shared_keys:macsec__pre_shared_keys list -> unit -> macsec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_interconnect

val google_compute_interconnect :
  ?admin_enabled:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?macsec_enabled:bool prop ->
  ?noc_contact_email:string prop ->
  ?project:string prop ->
  ?remote_location:string prop ->
  ?requested_features:string prop list ->
  ?macsec:macsec list ->
  ?timeouts:timeouts ->
  customer_name:string prop ->
  interconnect_type:string prop ->
  link_type:string prop ->
  location:string prop ->
  name:string prop ->
  requested_link_count:float prop ->
  unit ->
  google_compute_interconnect

val yojson_of_google_compute_interconnect :
  google_compute_interconnect -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_enabled : bool prop;
  available_features : string list prop;
  circuit_infos : circuit_infos list prop;
  creation_timestamp : string prop;
  customer_name : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  expected_outages : expected_outages list prop;
  google_ip_address : string prop;
  google_reference_id : string prop;
  id : string prop;
  interconnect_attachments : string list prop;
  interconnect_type : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  link_type : string prop;
  location : string prop;
  macsec_enabled : bool prop;
  name : string prop;
  noc_contact_email : string prop;
  operational_status : string prop;
  peer_ip_address : string prop;
  project : string prop;
  provisioned_link_count : float prop;
  remote_location : string prop;
  requested_features : string list prop;
  requested_link_count : float prop;
  satisfies_pzs : bool prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin_enabled:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?macsec_enabled:bool prop ->
  ?noc_contact_email:string prop ->
  ?project:string prop ->
  ?remote_location:string prop ->
  ?requested_features:string prop list ->
  ?macsec:macsec list ->
  ?timeouts:timeouts ->
  customer_name:string prop ->
  interconnect_type:string prop ->
  link_type:string prop ->
  location:string prop ->
  name:string prop ->
  requested_link_count:float prop ->
  string ->
  t

val make :
  ?admin_enabled:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?macsec_enabled:bool prop ->
  ?noc_contact_email:string prop ->
  ?project:string prop ->
  ?remote_location:string prop ->
  ?requested_features:string prop list ->
  ?macsec:macsec list ->
  ?timeouts:timeouts ->
  customer_name:string prop ->
  interconnect_type:string prop ->
  link_type:string prop ->
  location:string prop ->
  name:string prop ->
  requested_link_count:float prop ->
  string ->
  t Tf_core.resource
