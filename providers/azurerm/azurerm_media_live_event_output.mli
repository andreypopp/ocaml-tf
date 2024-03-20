(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_media_live_event_output

val azurerm_media_live_event_output :
  ?description:string prop ->
  ?hls_fragments_per_ts_segment:float prop ->
  ?id:string prop ->
  ?manifest_name:string prop ->
  ?output_snap_time_in_seconds:float prop ->
  ?rewind_window_duration:string prop ->
  ?timeouts:timeouts ->
  archive_window_duration:string prop ->
  asset_name:string prop ->
  live_event_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_media_live_event_output

val yojson_of_azurerm_media_live_event_output :
  azurerm_media_live_event_output -> json

(** RESOURCE REGISTRATION *)

type t = private {
  archive_window_duration : string prop;
  asset_name : string prop;
  description : string prop;
  hls_fragments_per_ts_segment : float prop;
  id : string prop;
  live_event_id : string prop;
  manifest_name : string prop;
  name : string prop;
  output_snap_time_in_seconds : float prop;
  rewind_window_duration : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?hls_fragments_per_ts_segment:float prop ->
  ?id:string prop ->
  ?manifest_name:string prop ->
  ?output_snap_time_in_seconds:float prop ->
  ?rewind_window_duration:string prop ->
  ?timeouts:timeouts ->
  archive_window_duration:string prop ->
  asset_name:string prop ->
  live_event_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?hls_fragments_per_ts_segment:float prop ->
  ?id:string prop ->
  ?manifest_name:string prop ->
  ?output_snap_time_in_seconds:float prop ->
  ?rewind_window_duration:string prop ->
  ?timeouts:timeouts ->
  archive_window_duration:string prop ->
  asset_name:string prop ->
  live_event_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
