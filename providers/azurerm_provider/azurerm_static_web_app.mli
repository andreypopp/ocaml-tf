(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_static_web_app__basic_auth
type azurerm_static_web_app__identity
type azurerm_static_web_app__timeouts
type azurerm_static_web_app

val azurerm_static_web_app :
  ?app_settings:(string * string) list ->
  ?configuration_file_changes_enabled:bool ->
  ?id:string ->
  ?preview_environments_enabled:bool ->
  ?sku_size:string ->
  ?sku_tier:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_static_web_app__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  basic_auth:azurerm_static_web_app__basic_auth list ->
  identity:azurerm_static_web_app__identity list ->
  string ->
  unit
