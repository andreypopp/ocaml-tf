(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_configuration_feature__targeting_filter__groups
type azurerm_app_configuration_feature__targeting_filter
type azurerm_app_configuration_feature__timeouts
type azurerm_app_configuration_feature__timewindow_filter
type azurerm_app_configuration_feature

val azurerm_app_configuration_feature :
  ?description:string ->
  ?enabled:bool ->
  ?etag:string ->
  ?id:string ->
  ?key:string ->
  ?label:string ->
  ?locked:bool ->
  ?percentage_filter_value:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_app_configuration_feature__timeouts ->
  configuration_store_id:string ->
  name:string ->
  targeting_filter:
    azurerm_app_configuration_feature__targeting_filter list ->
  timewindow_filter:
    azurerm_app_configuration_feature__timewindow_filter list ->
  string ->
  unit
