(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_static_web_app__basic_auth
type azurerm_static_web_app__identity
type azurerm_static_web_app__timeouts
type azurerm_static_web_app

type t = private {
  api_key : string prop;
  app_settings : (string * string) list prop;
  configuration_file_changes_enabled : bool prop;
  default_host_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  preview_environments_enabled : bool prop;
  resource_group_name : string prop;
  sku_size : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
}

val azurerm_static_web_app :
  ?app_settings:(string * string prop) list ->
  ?configuration_file_changes_enabled:bool prop ->
  ?id:string prop ->
  ?preview_environments_enabled:bool prop ->
  ?sku_size:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_static_web_app__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  basic_auth:azurerm_static_web_app__basic_auth list ->
  identity:azurerm_static_web_app__identity list ->
  string ->
  t
