(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type presentation_time_range

val presentation_time_range :
  ?end_in_units:float prop ->
  ?force_end:bool prop ->
  ?live_backoff_in_units:float prop ->
  ?presentation_window_in_units:float prop ->
  ?start_in_units:float prop ->
  ?unit_timescale_in_miliseconds:float prop ->
  unit ->
  presentation_time_range

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type track_selection__condition

val track_selection__condition :
  ?operation:string prop ->
  ?property:string prop ->
  ?value:string prop ->
  unit ->
  track_selection__condition

type track_selection

val track_selection :
  condition:track_selection__condition list ->
  unit ->
  track_selection

type azurerm_media_asset_filter

val azurerm_media_asset_filter :
  ?first_quality_bitrate:float prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  asset_id:string prop ->
  name:string prop ->
  presentation_time_range:presentation_time_range list ->
  track_selection:track_selection list ->
  unit ->
  azurerm_media_asset_filter

val yojson_of_azurerm_media_asset_filter :
  azurerm_media_asset_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  asset_id : string prop;
  first_quality_bitrate : float prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?first_quality_bitrate:float prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  asset_id:string prop ->
  name:string prop ->
  presentation_time_range:presentation_time_range list ->
  track_selection:track_selection list ->
  string ->
  t
