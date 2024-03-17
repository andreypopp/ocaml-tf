(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spatial_anchors_account__timeouts
type azurerm_spatial_anchors_account

val azurerm_spatial_anchors_account :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_spatial_anchors_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
