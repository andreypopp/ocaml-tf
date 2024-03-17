(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership_binding__timeouts

type google_gke_hub_membership_binding__state = {
  code : string prop;  (** code *)
}

type google_gke_hub_membership_binding

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
  state : google_gke_hub_membership_binding__state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

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
  t
