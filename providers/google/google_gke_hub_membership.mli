(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authority

val authority : issuer:string prop -> unit -> authority

type endpoint__gke_cluster

val endpoint__gke_cluster :
  resource_link:string prop -> unit -> endpoint__gke_cluster

type endpoint

val endpoint :
  gke_cluster:endpoint__gke_cluster list -> unit -> endpoint

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_hub_membership

val google_gke_hub_membership :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  membership_id:string prop ->
  authority:authority list ->
  endpoint:endpoint list ->
  unit ->
  google_gke_hub_membership

val yojson_of_google_gke_hub_membership :
  google_gke_hub_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  membership_id : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  membership_id:string prop ->
  authority:authority list ->
  endpoint:endpoint list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  membership_id:string prop ->
  authority:authority list ->
  endpoint:endpoint list ->
  string ->
  t Tf_core.resource
