(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_discovery_engine_search_engine__common_config
type google_discovery_engine_search_engine__search_engine_config
type google_discovery_engine_search_engine__timeouts
type google_discovery_engine_search_engine

val google_discovery_engine_search_engine :
  ?industry_vertical:string ->
  ?timeouts:google_discovery_engine_search_engine__timeouts ->
  collection_id:string ->
  data_store_ids:string list ->
  display_name:string ->
  engine_id:string ->
  location:string ->
  common_config:
    google_discovery_engine_search_engine__common_config list ->
  search_engine_config:
    google_discovery_engine_search_engine__search_engine_config list ->
  string ->
  unit
