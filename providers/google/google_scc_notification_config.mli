(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_notification_config__streaming_config
type google_scc_notification_config__timeouts
type google_scc_notification_config

type t = private {
  config_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  organization : string prop;
  pubsub_topic : string prop;
  service_account : string prop;
}

val google_scc_notification_config :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_scc_notification_config__timeouts ->
  config_id:string prop ->
  organization:string prop ->
  pubsub_topic:string prop ->
  streaming_config:
    google_scc_notification_config__streaming_config list ->
  string ->
  t
