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

type google_discovery_engine_data_store

val google_discovery_engine_data_store :
  ?create_advanced_site_search:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?solution_types:string prop list ->
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
  ?timeouts:timeouts ->
  content_config:string prop ->
  data_store_id:string prop ->
  display_name:string prop ->
  industry_vertical:string prop ->
  location:string prop ->
  string ->
  t
