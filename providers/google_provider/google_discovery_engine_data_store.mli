(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_discovery_engine_data_store__timeouts
type google_discovery_engine_data_store

val google_discovery_engine_data_store :
  ?create_advanced_site_search:bool ->
  ?solution_types:string list ->
  ?timeouts:google_discovery_engine_data_store__timeouts ->
  content_config:string ->
  data_store_id:string ->
  display_name:string ->
  industry_vertical:string ->
  location:string ->
  string ->
  unit
