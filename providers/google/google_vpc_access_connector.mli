(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type subnet

val subnet :
  ?name:string prop -> ?project_id:string prop -> unit -> subnet

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_vpc_access_connector

val google_vpc_access_connector :
  ?id:string prop ->
  ?ip_cidr_range:string prop ->
  ?machine_type:string prop ->
  ?max_instances:float prop ->
  ?max_throughput:float prop ->
  ?min_instances:float prop ->
  ?min_throughput:float prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  subnet:subnet list ->
  unit ->
  google_vpc_access_connector

val yojson_of_google_vpc_access_connector :
  google_vpc_access_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip_cidr_range:string prop ->
  ?machine_type:string prop ->
  ?max_instances:float prop ->
  ?max_throughput:float prop ->
  ?min_instances:float prop ->
  ?min_throughput:float prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  subnet:subnet list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ip_cidr_range:string prop ->
  ?machine_type:string prop ->
  ?max_instances:float prop ->
  ?max_throughput:float prop ->
  ?min_instances:float prop ->
  ?min_throughput:float prop ->
  ?network:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  subnet:subnet list ->
  string ->
  t Tf_core.resource
