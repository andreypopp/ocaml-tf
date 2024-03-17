(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_listing__bigquery_dataset
type google_bigquery_analytics_hub_listing__data_provider
type google_bigquery_analytics_hub_listing__publisher
type google_bigquery_analytics_hub_listing__restricted_export_config
type google_bigquery_analytics_hub_listing__timeouts
type google_bigquery_analytics_hub_listing

type t = private {
  categories : string list prop;
  data_exchange_id : string prop;
  description : string prop;
  display_name : string prop;
  documentation : string prop;
  icon : string prop;
  id : string prop;
  listing_id : string prop;
  location : string prop;
  name : string prop;
  primary_contact : string prop;
  project : string prop;
  request_access : string prop;
}

val google_bigquery_analytics_hub_listing :
  ?categories:string prop list ->
  ?description:string prop ->
  ?documentation:string prop ->
  ?icon:string prop ->
  ?id:string prop ->
  ?primary_contact:string prop ->
  ?project:string prop ->
  ?request_access:string prop ->
  ?timeouts:google_bigquery_analytics_hub_listing__timeouts ->
  data_exchange_id:string prop ->
  display_name:string prop ->
  listing_id:string prop ->
  location:string prop ->
  bigquery_dataset:
    google_bigquery_analytics_hub_listing__bigquery_dataset list ->
  data_provider:
    google_bigquery_analytics_hub_listing__data_provider list ->
  publisher:google_bigquery_analytics_hub_listing__publisher list ->
  restricted_export_config:
    google_bigquery_analytics_hub_listing__restricted_export_config
    list ->
  string ->
  t
