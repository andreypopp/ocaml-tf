(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_capacity_commitment

val google_bigquery_capacity_commitment :
  ?capacity_commitment_id:string prop ->
  ?edition:string prop ->
  ?enforce_single_admin_project_per_org:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?renewal_plan:string prop ->
  ?timeouts:timeouts ->
  plan:string prop ->
  slot_count:float prop ->
  unit ->
  google_bigquery_capacity_commitment

val yojson_of_google_bigquery_capacity_commitment :
  google_bigquery_capacity_commitment -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?capacity_commitment_id:string prop ->
  ?edition:string prop ->
  ?enforce_single_admin_project_per_org:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?renewal_plan:string prop ->
  ?timeouts:timeouts ->
  plan:string prop ->
  slot_count:float prop ->
  string ->
  t
