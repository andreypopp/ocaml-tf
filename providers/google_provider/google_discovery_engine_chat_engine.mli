(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_discovery_engine_chat_engine__chat_engine_config__agent_creation_config

type google_discovery_engine_chat_engine__chat_engine_config
type google_discovery_engine_chat_engine__common_config
type google_discovery_engine_chat_engine__timeouts

type google_discovery_engine_chat_engine__chat_engine_metadata = {
  dialogflow_agent : string;  (** dialogflow_agent *)
}
[@@deriving yojson_of]

type google_discovery_engine_chat_engine

val google_discovery_engine_chat_engine :
  ?industry_vertical:string ->
  ?timeouts:google_discovery_engine_chat_engine__timeouts ->
  collection_id:string ->
  data_store_ids:string list ->
  display_name:string ->
  engine_id:string ->
  location:string ->
  chat_engine_config:
    google_discovery_engine_chat_engine__chat_engine_config list ->
  common_config:
    google_discovery_engine_chat_engine__common_config list ->
  string ->
  unit
