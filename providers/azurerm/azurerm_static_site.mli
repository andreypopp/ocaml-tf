(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_static_site

val azurerm_static_site :
  ?app_settings:(string * string prop) list ->
  ?id:string prop ->
  ?sku_size:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_static_site

val yojson_of_azurerm_static_site : azurerm_static_site -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_key : string prop;
  app_settings : (string * string) list prop;
  default_host_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_size : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?app_settings:(string * string prop) list ->
  ?id:string prop ->
  ?sku_size:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?app_settings:(string * string prop) list ->
  ?id:string prop ->
  ?sku_size:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
