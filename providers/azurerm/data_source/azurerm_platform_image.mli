(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_platform_image

val azurerm_platform_image :
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  unit ->
  azurerm_platform_image

val yojson_of_azurerm_platform_image : azurerm_platform_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource
