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

type google_bigquery_analytics_hub_data_exchange

val google_bigquery_analytics_hub_data_exchange :
  ?description:string prop ->
  ?documentation:string prop ->
  ?icon:string prop ->
  ?id:string prop ->
  ?primary_contact:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  data_exchange_id:string prop ->
  display_name:string prop ->
  location:string prop ->
  unit ->
  google_bigquery_analytics_hub_data_exchange

val yojson_of_google_bigquery_analytics_hub_data_exchange :
  google_bigquery_analytics_hub_data_exchange -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_exchange_id : string prop;
  description : string prop;
  display_name : string prop;
  documentation : string prop;
  icon : string prop;
  id : string prop;
  listing_count : float prop;
  location : string prop;
  name : string prop;
  primary_contact : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?documentation:string prop ->
  ?icon:string prop ->
  ?id:string prop ->
  ?primary_contact:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  data_exchange_id:string prop ->
  display_name:string prop ->
  location:string prop ->
  string ->
  t
