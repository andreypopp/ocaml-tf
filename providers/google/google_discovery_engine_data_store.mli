(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type document_processing_config__default_parsing_config__digital_parsing_config

val document_processing_config__default_parsing_config__digital_parsing_config :
  unit ->
  document_processing_config__default_parsing_config__digital_parsing_config

type document_processing_config__default_parsing_config__ocr_parsing_config

val document_processing_config__default_parsing_config__ocr_parsing_config :
  ?use_native_text:bool prop ->
  unit ->
  document_processing_config__default_parsing_config__ocr_parsing_config

type document_processing_config__default_parsing_config

val document_processing_config__default_parsing_config :
  ?digital_parsing_config:
    document_processing_config__default_parsing_config__digital_parsing_config
    list ->
  ?ocr_parsing_config:
    document_processing_config__default_parsing_config__ocr_parsing_config
    list ->
  unit ->
  document_processing_config__default_parsing_config

type document_processing_config__parsing_config_overrides__digital_parsing_config

val document_processing_config__parsing_config_overrides__digital_parsing_config :
  unit ->
  document_processing_config__parsing_config_overrides__digital_parsing_config

type document_processing_config__parsing_config_overrides__ocr_parsing_config

val document_processing_config__parsing_config_overrides__ocr_parsing_config :
  ?use_native_text:bool prop ->
  unit ->
  document_processing_config__parsing_config_overrides__ocr_parsing_config

type document_processing_config__parsing_config_overrides

val document_processing_config__parsing_config_overrides :
  ?digital_parsing_config:
    document_processing_config__parsing_config_overrides__digital_parsing_config
    list ->
  ?ocr_parsing_config:
    document_processing_config__parsing_config_overrides__ocr_parsing_config
    list ->
  file_type:string prop ->
  unit ->
  document_processing_config__parsing_config_overrides

type document_processing_config

val document_processing_config :
  ?default_parsing_config:
    document_processing_config__default_parsing_config list ->
  parsing_config_overrides:
    document_processing_config__parsing_config_overrides list ->
  unit ->
  document_processing_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_discovery_engine_data_store

val google_discovery_engine_data_store :
  ?create_advanced_site_search:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?solution_types:string prop list ->
  ?document_processing_config:document_processing_config list ->
  ?timeouts:timeouts ->
  content_config:string prop ->
  data_store_id:string prop ->
  display_name:string prop ->
  industry_vertical:string prop ->
  location:string prop ->
  unit ->
  google_discovery_engine_data_store

val yojson_of_google_discovery_engine_data_store :
  google_discovery_engine_data_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  content_config : string prop;
  create_advanced_site_search : bool prop;
  create_time : string prop;
  data_store_id : string prop;
  default_schema_id : string prop;
  display_name : string prop;
  id : string prop;
  industry_vertical : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  solution_types : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_advanced_site_search:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?solution_types:string prop list ->
  ?document_processing_config:document_processing_config list ->
  ?timeouts:timeouts ->
  content_config:string prop ->
  data_store_id:string prop ->
  display_name:string prop ->
  industry_vertical:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?create_advanced_site_search:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?solution_types:string prop list ->
  ?document_processing_config:document_processing_config list ->
  ?timeouts:timeouts ->
  content_config:string prop ->
  data_store_id:string prop ->
  display_name:string prop ->
  industry_vertical:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
