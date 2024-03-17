(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_live_event_output__timeouts
type azurerm_media_live_event_output

val azurerm_media_live_event_output :
  ?description:string ->
  ?hls_fragments_per_ts_segment:float ->
  ?output_snap_time_in_seconds:float ->
  ?rewind_window_duration:string ->
  ?timeouts:azurerm_media_live_event_output__timeouts ->
  archive_window_duration:string ->
  asset_name:string ->
  live_event_id:string ->
  name:string ->
  string ->
  unit
