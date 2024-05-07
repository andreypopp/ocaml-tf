(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_masking_policy

val data_masking_policy :
  predefined_expression:string prop -> unit -> data_masking_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_datapolicy_data_policy

val google_bigquery_datapolicy_data_policy :
  ?id:string prop ->
  ?project:string prop ->
  ?data_masking_policy:data_masking_policy list ->
  ?timeouts:timeouts ->
  data_policy_id:string prop ->
  data_policy_type:string prop ->
  location:string prop ->
  policy_tag:string prop ->
  unit ->
  google_bigquery_datapolicy_data_policy

val yojson_of_google_bigquery_datapolicy_data_policy :
  google_bigquery_datapolicy_data_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_policy_id : string prop;
  data_policy_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  policy_tag : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?data_masking_policy:data_masking_policy list ->
  ?timeouts:timeouts ->
  data_policy_id:string prop ->
  data_policy_type:string prop ->
  location:string prop ->
  policy_tag:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?data_masking_policy:data_masking_policy list ->
  ?timeouts:timeouts ->
  data_policy_id:string prop ->
  data_policy_type:string prop ->
  location:string prop ->
  policy_tag:string prop ->
  string ->
  t Tf_core.resource
