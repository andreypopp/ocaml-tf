(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type node_type_flexibility

val node_type_flexibility :
  ?cpus:string prop ->
  ?memory:string prop ->
  unit ->
  node_type_flexibility

type server_binding

val server_binding : type_:string prop -> unit -> server_binding

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_node_template

val google_compute_node_template :
  ?cpu_overcommit_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?node_affinity_labels:(string * string prop) list ->
  ?node_type:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?node_type_flexibility:node_type_flexibility list ->
  ?server_binding:server_binding list ->
  ?timeouts:timeouts ->
  unit ->
  google_compute_node_template

val yojson_of_google_compute_node_template :
  google_compute_node_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cpu_overcommit_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  node_affinity_labels : (string * string) list prop;
  node_type : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cpu_overcommit_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?node_affinity_labels:(string * string prop) list ->
  ?node_type:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?node_type_flexibility:node_type_flexibility list ->
  ?server_binding:server_binding list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?cpu_overcommit_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?node_affinity_labels:(string * string prop) list ->
  ?node_type:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?node_type_flexibility:node_type_flexibility list ->
  ?server_binding:server_binding list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
