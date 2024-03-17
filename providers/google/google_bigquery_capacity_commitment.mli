(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_capacity_commitment__timeouts
type google_bigquery_capacity_commitment

type t = private {
  capacity_commitment_id : string prop;
  commitment_end_time : string prop;
  commitment_start_time : string prop;
  edition : string prop;
  enforce_single_admin_project_per_org : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  plan : string prop;
  project : string prop;
  renewal_plan : string prop;
  slot_count : float prop;
  state : string prop;
}

val google_bigquery_capacity_commitment :
  ?capacity_commitment_id:string prop ->
  ?edition:string prop ->
  ?enforce_single_admin_project_per_org:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?renewal_plan:string prop ->
  ?timeouts:google_bigquery_capacity_commitment__timeouts ->
  plan:string prop ->
  slot_count:float prop ->
  string ->
  t
