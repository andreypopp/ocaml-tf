(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_namespace__timeouts
type google_gke_hub_namespace__state = { code : string  (** code *) }
type google_gke_hub_namespace

val google_gke_hub_namespace :
  ?id:string ->
  ?labels:(string * string) list ->
  ?namespace_labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_gke_hub_namespace__timeouts ->
  scope:string ->
  scope_id:string ->
  scope_namespace_id:string ->
  string ->
  unit
