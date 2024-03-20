(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type partition_config__capacity

val partition_config__capacity :
  publish_mib_per_sec:float prop ->
  subscribe_mib_per_sec:float prop ->
  unit ->
  partition_config__capacity

type partition_config

val partition_config :
  count:float prop ->
  capacity:partition_config__capacity list ->
  unit ->
  partition_config

type reservation_config

val reservation_config :
  ?throughput_reservation:string prop -> unit -> reservation_config

type retention_config

val retention_config :
  ?period:string prop ->
  per_partition_bytes:string prop ->
  unit ->
  retention_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_pubsub_lite_topic

val google_pubsub_lite_topic :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  partition_config:partition_config list ->
  reservation_config:reservation_config list ->
  retention_config:retention_config list ->
  unit ->
  google_pubsub_lite_topic

val yojson_of_google_pubsub_lite_topic :
  google_pubsub_lite_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  partition_config:partition_config list ->
  reservation_config:reservation_config list ->
  retention_config:retention_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  partition_config:partition_config list ->
  reservation_config:reservation_config list ->
  retention_config:retention_config list ->
  string ->
  t Tf_core.resource
