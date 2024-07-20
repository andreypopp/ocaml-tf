(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type streaming_config

val streaming_config : filter:string prop -> unit -> streaming_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_scc_project_notification_config

val google_scc_project_notification_config :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  config_id:string prop ->
  pubsub_topic:string prop ->
  streaming_config:streaming_config list ->
  unit ->
  google_scc_project_notification_config

val yojson_of_google_scc_project_notification_config :
  google_scc_project_notification_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  config_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  pubsub_topic : string prop;
  service_account : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  config_id:string prop ->
  pubsub_topic:string prop ->
  streaming_config:streaming_config list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  config_id:string prop ->
  pubsub_topic:string prop ->
  streaming_config:streaming_config list ->
  string ->
  t Tf_core.resource
