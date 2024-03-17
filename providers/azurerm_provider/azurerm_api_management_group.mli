(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_group__timeouts
type azurerm_api_management_group

val azurerm_api_management_group :
  ?description:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?timeouts:azurerm_api_management_group__timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
