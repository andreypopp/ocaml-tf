(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership_binding__timeouts

type google_gke_hub_membership_binding__state = {
  code : string prop;  (** code *)
}

type google_gke_hub_membership_binding

val google_gke_hub_membership_binding :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_gke_hub_membership_binding__timeouts ->
  location:string prop ->
  membership_binding_id:string prop ->
  membership_id:string prop ->
  scope:string prop ->
  string ->
  unit
