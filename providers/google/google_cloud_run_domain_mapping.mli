(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type status__resource_records = {
  name : string prop;  (** name *)
  rrdata : string prop;  (** rrdata *)
  type_ : string prop; [@key "type"]  (** type *)
}

type status__conditions = {
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}

type status = {
  conditions : status__conditions list;  (** conditions *)
  mapped_route_name : string prop;  (** mapped_route_name *)
  observed_generation : float prop;  (** observed_generation *)
  resource_records : status__resource_records list;
      (** resource_records *)
}

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  namespace:string prop ->
  unit ->
  metadata

type spec

val spec :
  ?certificate_mode:string prop ->
  ?force_override:bool prop ->
  route_name:string prop ->
  unit ->
  spec

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_cloud_run_domain_mapping

val google_cloud_run_domain_mapping :
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  spec:spec list ->
  unit ->
  google_cloud_run_domain_mapping

val yojson_of_google_cloud_run_domain_mapping :
  google_cloud_run_domain_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  status : status list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  spec:spec list ->
  string ->
  t Tf_core.resource
