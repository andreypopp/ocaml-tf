(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_analytics_hub_listing__bigquery_dataset
type google_bigquery_analytics_hub_listing__data_provider
type google_bigquery_analytics_hub_listing__publisher
type google_bigquery_analytics_hub_listing__restricted_export_config
type google_bigquery_analytics_hub_listing__timeouts
type google_bigquery_analytics_hub_listing

val google_bigquery_analytics_hub_listing :
  ?categories:string list ->
  ?description:string ->
  ?documentation:string ->
  ?icon:string ->
  ?primary_contact:string ->
  ?request_access:string ->
  ?timeouts:google_bigquery_analytics_hub_listing__timeouts ->
  data_exchange_id:string ->
  display_name:string ->
  listing_id:string ->
  location:string ->
  bigquery_dataset:
    google_bigquery_analytics_hub_listing__bigquery_dataset list ->
  data_provider:
    google_bigquery_analytics_hub_listing__data_provider list ->
  publisher:google_bigquery_analytics_hub_listing__publisher list ->
  restricted_export_config:
    google_bigquery_analytics_hub_listing__restricted_export_config
    list ->
  string ->
  unit
