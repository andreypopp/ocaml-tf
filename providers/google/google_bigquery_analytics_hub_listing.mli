(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_dataset

val bigquery_dataset :
  dataset:string prop -> unit -> bigquery_dataset

type data_provider

val data_provider :
  ?primary_contact:string prop ->
  name:string prop ->
  unit ->
  data_provider

type publisher

val publisher :
  ?primary_contact:string prop ->
  name:string prop ->
  unit ->
  publisher

type restricted_export_config

val restricted_export_config :
  ?enabled:bool prop ->
  ?restrict_query_result:bool prop ->
  unit ->
  restricted_export_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_analytics_hub_listing

val google_bigquery_analytics_hub_listing :
  ?categories:string prop list ->
  ?description:string prop ->
  ?documentation:string prop ->
  ?icon:string prop ->
  ?id:string prop ->
  ?primary_contact:string prop ->
  ?project:string prop ->
  ?request_access:string prop ->
  ?data_provider:data_provider list ->
  ?publisher:publisher list ->
  ?restricted_export_config:restricted_export_config list ->
  ?timeouts:timeouts ->
  data_exchange_id:string prop ->
  display_name:string prop ->
  listing_id:string prop ->
  location:string prop ->
  bigquery_dataset:bigquery_dataset list ->
  unit ->
  google_bigquery_analytics_hub_listing

val yojson_of_google_bigquery_analytics_hub_listing :
  google_bigquery_analytics_hub_listing -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?categories:string prop list ->
  ?description:string prop ->
  ?documentation:string prop ->
  ?icon:string prop ->
  ?id:string prop ->
  ?primary_contact:string prop ->
  ?project:string prop ->
  ?request_access:string prop ->
  ?data_provider:data_provider list ->
  ?publisher:publisher list ->
  ?restricted_export_config:restricted_export_config list ->
  ?timeouts:timeouts ->
  data_exchange_id:string prop ->
  display_name:string prop ->
  listing_id:string prop ->
  location:string prop ->
  bigquery_dataset:bigquery_dataset list ->
  string ->
  t

val make :
  ?categories:string prop list ->
  ?description:string prop ->
  ?documentation:string prop ->
  ?icon:string prop ->
  ?id:string prop ->
  ?primary_contact:string prop ->
  ?project:string prop ->
  ?request_access:string prop ->
  ?data_provider:data_provider list ->
  ?publisher:publisher list ->
  ?restricted_export_config:restricted_export_config list ->
  ?timeouts:timeouts ->
  data_exchange_id:string prop ->
  display_name:string prop ->
  listing_id:string prop ->
  location:string prop ->
  bigquery_dataset:bigquery_dataset list ->
  string ->
  t Tf_core.resource
