(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_fhir_store__notification_config

type google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config__last_updated_partition_config

type google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config

type google_healthcare_fhir_store__stream_configs__bigquery_destination

type google_healthcare_fhir_store__stream_configs
type google_healthcare_fhir_store__timeouts
type google_healthcare_fhir_store

type t = private {
  complex_data_type_reference_parsing : string prop;
  dataset : string prop;
  default_search_handling_strict : bool prop;
  disable_referential_integrity : bool prop;
  disable_resource_versioning : bool prop;
  effective_labels : (string * string) list prop;
  enable_history_import : bool prop;
  enable_update_create : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
  version : string prop;
}

val google_healthcare_fhir_store :
  ?complex_data_type_reference_parsing:string prop ->
  ?default_search_handling_strict:bool prop ->
  ?disable_referential_integrity:bool prop ->
  ?disable_resource_versioning:bool prop ->
  ?enable_history_import:bool prop ->
  ?enable_update_create:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:google_healthcare_fhir_store__timeouts ->
  dataset:string prop ->
  name:string prop ->
  version:string prop ->
  notification_config:
    google_healthcare_fhir_store__notification_config list ->
  stream_configs:google_healthcare_fhir_store__stream_configs list ->
  string ->
  t
