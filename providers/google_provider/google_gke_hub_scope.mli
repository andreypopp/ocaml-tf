(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope__timeouts

type google_gke_hub_scope__state = {
  code : string prop;  (** code *)
}

type google_gke_hub_scope

val google_gke_hub_scope :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?namespace_labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_gke_hub_scope__timeouts ->
  scope_id:string prop ->
  string ->
  unit
