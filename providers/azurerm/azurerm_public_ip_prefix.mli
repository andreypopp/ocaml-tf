(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_public_ip_prefix

val azurerm_public_ip_prefix :
  ?id:string prop ->
  ?ip_version:string prop ->
  ?prefix_length:float prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_public_ip_prefix

val yojson_of_azurerm_public_ip_prefix :
  azurerm_public_ip_prefix -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ip_prefix : string prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  prefix_length : float prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip_version:string prop ->
  ?prefix_length:float prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?ip_version:string prop ->
  ?prefix_length:float prop ->
  ?sku:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
