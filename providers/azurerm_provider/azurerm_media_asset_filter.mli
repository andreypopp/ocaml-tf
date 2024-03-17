(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_asset_filter__presentation_time_range
type azurerm_media_asset_filter__timeouts
type azurerm_media_asset_filter__track_selection__condition
type azurerm_media_asset_filter__track_selection
type azurerm_media_asset_filter

val azurerm_media_asset_filter :
  ?first_quality_bitrate:float prop ->
  ?id:string prop ->
  ?timeouts:azurerm_media_asset_filter__timeouts ->
  asset_id:string prop ->
  name:string prop ->
  presentation_time_range:
    azurerm_media_asset_filter__presentation_time_range list ->
  track_selection:azurerm_media_asset_filter__track_selection list ->
  string ->
  unit
