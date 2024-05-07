(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type state = { code : string prop  (** code *) }
type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_hub_scope

val google_gke_hub_scope :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?namespace_labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  scope_id:string prop ->
  unit ->
  google_gke_hub_scope

val yojson_of_google_gke_hub_scope : google_gke_hub_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  namespace_labels : (string * string) list prop;
  project : string prop;
  scope_id : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?namespace_labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  scope_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?namespace_labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  scope_id:string prop ->
  string ->
  t Tf_core.resource
