(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spatial_anchors_account__timeouts
type azurerm_spatial_anchors_account

val azurerm_spatial_anchors_account :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_spatial_anchors_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
