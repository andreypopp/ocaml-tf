(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_fhir_store__notification_config

type google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config__last_updated_partition_config

type google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config

type google_healthcare_fhir_store__stream_configs__bigquery_destination

type google_healthcare_fhir_store__stream_configs
type google_healthcare_fhir_store__timeouts
type google_healthcare_fhir_store

val google_healthcare_fhir_store :
  ?default_search_handling_strict:bool ->
  ?disable_referential_integrity:bool ->
  ?disable_resource_versioning:bool ->
  ?enable_history_import:bool ->
  ?enable_update_create:bool ->
  ?labels:(string * string) list ->
  ?timeouts:google_healthcare_fhir_store__timeouts ->
  dataset:string ->
  name:string ->
  version:string ->
  notification_config:
    google_healthcare_fhir_store__notification_config list ->
  stream_configs:google_healthcare_fhir_store__stream_configs list ->
  string ->
  unit
