(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_group__timeouts
type azurerm_management_group

val azurerm_management_group :
  ?display_name:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?parent_management_group_id:string prop ->
  ?subscription_ids:string prop list ->
  ?timeouts:azurerm_management_group__timeouts ->
  string ->
  unit
