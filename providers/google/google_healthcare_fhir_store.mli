(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type notification_config

val notification_config :
  pubsub_topic:string prop -> unit -> notification_config

type stream_configs__bigquery_destination__schema_config__last_updated_partition_config

val stream_configs__bigquery_destination__schema_config__last_updated_partition_config :
  ?expiration_ms:string prop ->
  type_:string prop ->
  unit ->
  stream_configs__bigquery_destination__schema_config__last_updated_partition_config

type stream_configs__bigquery_destination__schema_config

val stream_configs__bigquery_destination__schema_config :
  ?schema_type:string prop ->
  ?last_updated_partition_config:
    stream_configs__bigquery_destination__schema_config__last_updated_partition_config
    list ->
  recursive_structure_depth:float prop ->
  unit ->
  stream_configs__bigquery_destination__schema_config

type stream_configs__bigquery_destination

val stream_configs__bigquery_destination :
  dataset_uri:string prop ->
  schema_config:
    stream_configs__bigquery_destination__schema_config list ->
  unit ->
  stream_configs__bigquery_destination

type stream_configs

val stream_configs :
  ?resource_types:string prop list ->
  bigquery_destination:stream_configs__bigquery_destination list ->
  unit ->
  stream_configs

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_healthcare_fhir_store

val google_healthcare_fhir_store :
  ?complex_data_type_reference_parsing:string prop ->
  ?default_search_handling_strict:bool prop ->
  ?disable_referential_integrity:bool prop ->
  ?disable_resource_versioning:bool prop ->
  ?enable_history_import:bool prop ->
  ?enable_update_create:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?notification_config:notification_config list ->
  ?stream_configs:stream_configs list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  version:string prop ->
  unit ->
  google_healthcare_fhir_store

val yojson_of_google_healthcare_fhir_store :
  google_healthcare_fhir_store -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?complex_data_type_reference_parsing:string prop ->
  ?default_search_handling_strict:bool prop ->
  ?disable_referential_integrity:bool prop ->
  ?disable_resource_versioning:bool prop ->
  ?enable_history_import:bool prop ->
  ?enable_update_create:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?notification_config:notification_config list ->
  ?stream_configs:stream_configs list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  version:string prop ->
  string ->
  t

val make :
  ?complex_data_type_reference_parsing:string prop ->
  ?default_search_handling_strict:bool prop ->
  ?disable_referential_integrity:bool prop ->
  ?disable_resource_versioning:bool prop ->
  ?enable_history_import:bool prop ->
  ?enable_update_create:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?notification_config:notification_config list ->
  ?stream_configs:stream_configs list ->
  ?timeouts:timeouts ->
  dataset:string prop ->
  name:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
