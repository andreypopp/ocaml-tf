(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dev_center_gallery__timeouts
type azurerm_dev_center_gallery

type t = private {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  shared_gallery_id : string prop;
}

val azurerm_dev_center_gallery :
  ?id:string prop ->
  ?timeouts:azurerm_dev_center_gallery__timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  shared_gallery_id:string prop ->
  string ->
  t
