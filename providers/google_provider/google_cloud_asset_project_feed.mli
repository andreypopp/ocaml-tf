(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_asset_project_feed__condition

type google_cloud_asset_project_feed__feed_output_config__pubsub_destination

type google_cloud_asset_project_feed__feed_output_config
type google_cloud_asset_project_feed__timeouts
type google_cloud_asset_project_feed

val google_cloud_asset_project_feed :
  ?asset_names:string prop list ->
  ?asset_types:string prop list ->
  ?billing_project:string prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloud_asset_project_feed__timeouts ->
  feed_id:string prop ->
  condition:google_cloud_asset_project_feed__condition list ->
  feed_output_config:
    google_cloud_asset_project_feed__feed_output_config list ->
  string ->
  unit
