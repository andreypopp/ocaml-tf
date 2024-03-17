(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_group__timeouts
type azurerm_api_management_group

val azurerm_api_management_group :
  ?description:string ->
  ?external_id:string ->
  ?id:string ->
  ?type_:string ->
  ?timeouts:azurerm_api_management_group__timeouts ->
  api_management_name:string ->
  display_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
