(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope__timeouts
type google_gke_hub_scope__state = { code : string  (** code *) }
type google_gke_hub_scope

val google_gke_hub_scope :
  ?id:string ->
  ?labels:(string * string) list ->
  ?namespace_labels:(string * string) list ->
  ?project:string ->
  ?timeouts:google_gke_hub_scope__timeouts ->
  scope_id:string ->
  string ->
  unit
