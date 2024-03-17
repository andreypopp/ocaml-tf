(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_membership__authority
type google_gke_hub_membership__endpoint__gke_cluster
type google_gke_hub_membership__endpoint
type google_gke_hub_membership__timeouts
type google_gke_hub_membership

val google_gke_hub_membership :
  ?labels:(string * string) list ->
  ?location:string ->
  ?timeouts:google_gke_hub_membership__timeouts ->
  membership_id:string ->
  authority:google_gke_hub_membership__authority list ->
  endpoint:google_gke_hub_membership__endpoint list ->
  string ->
  unit
