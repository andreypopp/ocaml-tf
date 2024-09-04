(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type projects = {
  create_time : string prop;  (** create_time *)
  labels : string prop Tf_core.assoc;  (** labels *)
  lifecycle_state : string prop;  (** lifecycle_state *)
  name : string prop;  (** name *)
  number : string prop;  (** number *)
  parent : string prop Tf_core.assoc;  (** parent *)
  project_id : string prop;  (** project_id *)
}

type google_projects

val google_projects :
  ?id:string prop -> filter:string prop -> unit -> google_projects

val yojson_of_google_projects : google_projects -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  projects : projects list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:string prop ->
  string ->
  t Tf_core.resource
