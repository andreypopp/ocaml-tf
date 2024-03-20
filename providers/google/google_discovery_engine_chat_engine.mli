(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type chat_engine_metadata = {
  dialogflow_agent : string prop;  (** dialogflow_agent *)
}

type chat_engine_config__agent_creation_config

val chat_engine_config__agent_creation_config :
  ?business:string prop ->
  ?location:string prop ->
  default_language_code:string prop ->
  time_zone:string prop ->
  unit ->
  chat_engine_config__agent_creation_config

type chat_engine_config

val chat_engine_config :
  agent_creation_config:
    chat_engine_config__agent_creation_config list ->
  unit ->
  chat_engine_config

type common_config

val common_config :
  ?company_name:string prop -> unit -> common_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_discovery_engine_chat_engine

val google_discovery_engine_chat_engine :
  ?id:string prop ->
  ?industry_vertical:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  data_store_ids:string prop list ->
  display_name:string prop ->
  engine_id:string prop ->
  location:string prop ->
  chat_engine_config:chat_engine_config list ->
  common_config:common_config list ->
  unit ->
  google_discovery_engine_chat_engine

val yojson_of_google_discovery_engine_chat_engine :
  google_discovery_engine_chat_engine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  chat_engine_metadata : chat_engine_metadata list prop;
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
  ?timeouts:timeouts ->
  collection_id:string prop ->
  data_store_ids:string prop list ->
  display_name:string prop ->
  engine_id:string prop ->
  location:string prop ->
  chat_engine_config:chat_engine_config list ->
  common_config:common_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?industry_vertical:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  collection_id:string prop ->
  data_store_ids:string prop list ->
  display_name:string prop ->
  engine_id:string prop ->
  location:string prop ->
  chat_engine_config:chat_engine_config list ->
  common_config:common_config list ->
  string ->
  t Tf_core.resource
