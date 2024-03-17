(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_capacity_commitment__timeouts
type google_bigquery_capacity_commitment

val google_bigquery_capacity_commitment :
  ?capacity_commitment_id:string ->
  ?edition:string ->
  ?enforce_single_admin_project_per_org:string ->
  ?id:string ->
  ?location:string ->
  ?project:string ->
  ?renewal_plan:string ->
  ?timeouts:google_bigquery_capacity_commitment__timeouts ->
  plan:string ->
  slot_count:float ->
  string ->
  unit
