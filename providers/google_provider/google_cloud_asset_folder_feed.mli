(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_asset_folder_feed__condition

type google_cloud_asset_folder_feed__feed_output_config__pubsub_destination

type google_cloud_asset_folder_feed__feed_output_config
type google_cloud_asset_folder_feed__timeouts
type google_cloud_asset_folder_feed

type t = private {
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

val google_cloud_asset_folder_feed :
  ?asset_names:string prop list ->
  ?asset_types:string prop list ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?timeouts:google_cloud_asset_folder_feed__timeouts ->
  billing_project:string prop ->
  feed_id:string prop ->
  folder:string prop ->
  condition:google_cloud_asset_folder_feed__condition list ->
  feed_output_config:
    google_cloud_asset_folder_feed__feed_output_config list ->
  string ->
  t
