(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_group__timeouts
type azurerm_management_group

val azurerm_management_group :
  ?display_name:string ->
  ?id:string ->
  ?name:string ->
  ?parent_management_group_id:string ->
  ?subscription_ids:string list ->
  ?timeouts:azurerm_management_group__timeouts ->
  string ->
  unit
