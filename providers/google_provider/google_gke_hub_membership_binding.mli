(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership_binding__timeouts

type google_gke_hub_membership_binding__state = {
  code : string;  (** code *)
}
[@@deriving yojson_of]

type google_gke_hub_membership_binding

val google_gke_hub_membership_binding :
  ?labels:(string * string) list ->
  ?timeouts:google_gke_hub_membership_binding__timeouts ->
  location:string ->
  membership_binding_id:string ->
  membership_id:string ->
  scope:string ->
  string ->
  unit
