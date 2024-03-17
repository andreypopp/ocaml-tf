(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership__authority
type google_gke_hub_membership__endpoint__gke_cluster
type google_gke_hub_membership__endpoint
type google_gke_hub_membership__timeouts
type google_gke_hub_membership

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

val google_gke_hub_membership :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:google_gke_hub_membership__timeouts ->
  membership_id:string prop ->
  authority:google_gke_hub_membership__authority list ->
  endpoint:google_gke_hub_membership__endpoint list ->
  string ->
  t
