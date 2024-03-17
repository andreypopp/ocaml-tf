(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_configuration_feature__targeting_filter__groups
type azurerm_app_configuration_feature__targeting_filter
type azurerm_app_configuration_feature__timeouts
type azurerm_app_configuration_feature__timewindow_filter
type azurerm_app_configuration_feature

type t = private {
  configuration_store_id : string prop;
  description : string prop;
  enabled : bool prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  name : string prop;
  percentage_filter_value : float prop;
  tags : (string * string) list prop;
}

val azurerm_app_configuration_feature :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?key:string prop ->
  ?label:string prop ->
  ?locked:bool prop ->
  ?percentage_filter_value:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_app_configuration_feature__timeouts ->
  configuration_store_id:string prop ->
  name:string prop ->
  targeting_filter:
    azurerm_app_configuration_feature__targeting_filter list ->
  timewindow_filter:
    azurerm_app_configuration_feature__timewindow_filter list ->
  string ->
  t
