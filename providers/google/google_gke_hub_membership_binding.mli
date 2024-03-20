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

type google_gke_hub_membership_binding

val google_gke_hub_membership_binding :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  membership_binding_id:string prop ->
  membership_id:string prop ->
  scope:string prop ->
  unit ->
  google_gke_hub_membership_binding

val yojson_of_google_gke_hub_membership_binding :
  google_gke_hub_membership_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  membership_binding_id : string prop;
  membership_id : string prop;
  name : string prop;
  project : string prop;
  scope : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  membership_binding_id:string prop ->
  membership_id:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  membership_binding_id:string prop ->
  membership_id:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
