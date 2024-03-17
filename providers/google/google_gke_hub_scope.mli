(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_scope__timeouts

type google_gke_hub_scope__state = {
  code : string prop;  (** code *)
}

type google_gke_hub_scope

type t = private {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  namespace_labels : (string * string) list prop;
  project : string prop;
  scope_id : string prop;
  state : google_gke_hub_scope__state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

val google_gke_hub_scope :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?namespace_labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_gke_hub_scope__timeouts ->
  scope_id:string prop ->
  string ->
  t
