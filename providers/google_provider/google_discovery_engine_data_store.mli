(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_discovery_engine_data_store__timeouts
type google_discovery_engine_data_store

val google_discovery_engine_data_store :
  ?create_advanced_site_search:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?solution_types:string prop list ->
  ?timeouts:google_discovery_engine_data_store__timeouts ->
  content_config:string prop ->
  data_store_id:string prop ->
  display_name:string prop ->
  industry_vertical:string prop ->
  location:string prop ->
  string ->
  unit
