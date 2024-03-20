(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type locations = {
  display_name : string prop;  (** display_name *)
  labels : (string * string prop) list;  (** labels *)
  location_id : string prop;  (** location_id *)
  metadata : (string * string prop) list;  (** metadata *)
  name : string prop;  (** name *)
}

type google_alloydb_locations

val google_alloydb_locations :
  ?id:string prop ->
  ?project:string prop ->
  unit ->
  google_alloydb_locations

val yojson_of_google_alloydb_locations :
  google_alloydb_locations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  locations : locations list prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
