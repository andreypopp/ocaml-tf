(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_live_event_output__timeouts
type azurerm_media_live_event_output

val azurerm_media_live_event_output :
  ?description:string prop ->
  ?hls_fragments_per_ts_segment:float prop ->
  ?id:string prop ->
  ?manifest_name:string prop ->
  ?output_snap_time_in_seconds:float prop ->
  ?rewind_window_duration:string prop ->
  ?timeouts:azurerm_media_live_event_output__timeouts ->
  archive_window_duration:string prop ->
  asset_name:string prop ->
  live_event_id:string prop ->
  name:string prop ->
  string ->
  unit
