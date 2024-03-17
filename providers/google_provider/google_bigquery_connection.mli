(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_connection__aws__access_role
type google_bigquery_connection__aws
type google_bigquery_connection__azure
type google_bigquery_connection__cloud_resource
type google_bigquery_connection__cloud_spanner
type google_bigquery_connection__cloud_sql__credential
type google_bigquery_connection__cloud_sql
type google_bigquery_connection__spark__metastore_service_config
type google_bigquery_connection__spark__spark_history_server_config
type google_bigquery_connection__spark
type google_bigquery_connection__timeouts
type google_bigquery_connection

val google_bigquery_connection :
  ?connection_id:string ->
  ?description:string ->
  ?friendly_name:string ->
  ?id:string ->
  ?location:string ->
  ?project:string ->
  ?timeouts:google_bigquery_connection__timeouts ->
  aws:google_bigquery_connection__aws list ->
  azure:google_bigquery_connection__azure list ->
  cloud_resource:google_bigquery_connection__cloud_resource list ->
  cloud_spanner:google_bigquery_connection__cloud_spanner list ->
  cloud_sql:google_bigquery_connection__cloud_sql list ->
  spark:google_bigquery_connection__spark list ->
  string ->
  unit
