(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type common_config

val common_config :
  ?company_name:string prop -> unit -> common_config

type search_engine_config

val search_engine_config :
  ?search_add_ons:string prop list ->
  ?search_tier:string prop ->
  unit ->
  search_engine_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_discovery_engine_search_engine

val google_discovery_engine_search_engine :
  ?id:string prop ->
  ?industry_vertical:string prop ->
  ?project:string prop ->
  ?common_config:common_config list ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  data_store_ids:string prop list ->
  display_name:string prop ->
  engine_id:string prop ->
  location:string prop ->
  search_engine_config:search_engine_config list ->
  unit ->
  google_discovery_engine_search_engine

val yojson_of_google_discovery_engine_search_engine :
  google_discovery_engine_search_engine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  collection_id : string prop;
  create_time : string prop;
  data_store_ids : string list prop;
  display_name : string prop;
  engine_id : string prop;
  id : string prop;
  industry_vertical : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?industry_vertical:string prop ->
  ?project:string prop ->
  ?common_config:common_config list ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  data_store_ids:string prop list ->
  display_name:string prop ->
  engine_id:string prop ->
  location:string prop ->
  search_engine_config:search_engine_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?industry_vertical:string prop ->
  ?project:string prop ->
  ?common_config:common_config list ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  data_store_ids:string prop list ->
  display_name:string prop ->
  engine_id:string prop ->
  location:string prop ->
  search_engine_config:search_engine_config list ->
  string ->
  t Tf_core.resource
