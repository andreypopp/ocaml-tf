(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_group_user__timeouts
type azurerm_api_management_group_user

val azurerm_api_management_group_user :
  ?id:string ->
  ?timeouts:azurerm_api_management_group_user__timeouts ->
  api_management_name:string ->
  group_name:string ->
  resource_group_name:string ->
  user_id:string ->
  string ->
  unit
