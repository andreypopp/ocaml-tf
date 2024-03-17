(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_namespace__timeouts

type google_gke_hub_namespace__state = {
  code : string prop;  (** code *)
}

type google_gke_hub_namespace

val google_gke_hub_namespace :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?namespace_labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_gke_hub_namespace__timeouts ->
  scope:string prop ->
  scope_id:string prop ->
  scope_namespace_id:string prop ->
  string ->
  unit
