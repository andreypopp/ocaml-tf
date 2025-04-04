(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type condition

val condition :
  ?description:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  expression:string prop ->
  unit ->
  condition

type feed_output_config__pubsub_destination

val feed_output_config__pubsub_destination :
  topic:string prop -> unit -> feed_output_config__pubsub_destination

type feed_output_config

val feed_output_config :
  pubsub_destination:feed_output_config__pubsub_destination list ->
  unit ->
  feed_output_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_asset_folder_feed

val google_cloud_asset_folder_feed :
  ?asset_names:string prop list ->
  ?asset_types:string prop list ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?condition:condition list ->
  ?timeouts:timeouts ->
  billing_project:string prop ->
  feed_id:string prop ->
  folder:string prop ->
  feed_output_config:feed_output_config list ->
  unit ->
  google_cloud_asset_folder_feed

val yojson_of_google_cloud_asset_folder_feed :
  google_cloud_asset_folder_feed -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  asset_names : string list prop;
  asset_types : string list prop;
  billing_project : string prop;
  content_type : string prop;
  feed_id : string prop;
  folder : string prop;
  folder_id : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?asset_names:string prop list ->
  ?asset_types:string prop list ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?condition:condition list ->
  ?timeouts:timeouts ->
  billing_project:string prop ->
  feed_id:string prop ->
  folder:string prop ->
  feed_output_config:feed_output_config list ->
  string ->
  t

val make :
  ?asset_names:string prop list ->
  ?asset_types:string prop list ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?condition:condition list ->
  ?timeouts:timeouts ->
  billing_project:string prop ->
  feed_id:string prop ->
  folder:string prop ->
  feed_output_config:feed_output_config list ->
  string ->
  t Tf_core.resource
