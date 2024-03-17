(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_services_account_filter__presentation_time_range
type azurerm_media_services_account_filter__timeouts
type azurerm_media_services_account_filter__track_selection__condition
type azurerm_media_services_account_filter__track_selection
type azurerm_media_services_account_filter

val azurerm_media_services_account_filter :
  ?first_quality_bitrate:float prop ->
  ?id:string prop ->
  ?timeouts:azurerm_media_services_account_filter__timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  presentation_time_range:
    azurerm_media_services_account_filter__presentation_time_range
    list ->
  track_selection:
    azurerm_media_services_account_filter__track_selection list ->
  string ->
  unit
