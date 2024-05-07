(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subnet = {
  name : string prop;  (** name *)
  project_id : string prop;  (** project_id *)
}

type google_vpc_access_connector

val google_vpc_access_connector :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  google_vpc_access_connector

val yojson_of_google_vpc_access_connector :
  google_vpc_access_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connected_projects : string list prop;
  id : string prop;
  ip_cidr_range : string prop;
  machine_type : string prop;
  max_instances : float prop;
  max_throughput : float prop;
  min_instances : float prop;
  min_throughput : float prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  state : string prop;
  subnet : subnet list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
