(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_data_exchange__timeouts
type google_bigquery_analytics_hub_data_exchange

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

val google_bigquery_analytics_hub_data_exchange :
  ?description:string prop ->
  ?documentation:string prop ->
  ?icon:string prop ->
  ?id:string prop ->
  ?primary_contact:string prop ->
  ?project:string prop ->
  ?timeouts:google_bigquery_analytics_hub_data_exchange__timeouts ->
  data_exchange_id:string prop ->
  display_name:string prop ->
  location:string prop ->
  string ->
  t
