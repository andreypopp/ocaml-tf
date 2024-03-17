(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_discovery_engine_chat_engine__chat_engine_config__agent_creation_config

type google_discovery_engine_chat_engine__chat_engine_config
type google_discovery_engine_chat_engine__common_config
type google_discovery_engine_chat_engine__timeouts

type google_discovery_engine_chat_engine__chat_engine_metadata = {
  dialogflow_agent : string prop;  (** dialogflow_agent *)
}

type google_discovery_engine_chat_engine

val google_discovery_engine_chat_engine :
  ?id:string prop ->
  ?industry_vertical:string prop ->
  ?project:string prop ->
  ?timeouts:google_discovery_engine_chat_engine__timeouts ->
  collection_id:string prop ->
  data_store_ids:string prop list ->
  display_name:string prop ->
  engine_id:string prop ->
  location:string prop ->
  chat_engine_config:
    google_discovery_engine_chat_engine__chat_engine_config list ->
  common_config:
    google_discovery_engine_chat_engine__common_config list ->
  string ->
  unit
