(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_shared_image_gallery__sharing__community_gallery
type azurerm_shared_image_gallery__sharing
type azurerm_shared_image_gallery__timeouts
type azurerm_shared_image_gallery

val azurerm_shared_image_gallery :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_shared_image_gallery__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sharing:azurerm_shared_image_gallery__sharing list ->
  string ->
  unit
