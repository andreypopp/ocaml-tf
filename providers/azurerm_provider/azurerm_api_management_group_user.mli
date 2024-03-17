(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_group_user__timeouts
type azurerm_api_management_group_user

val azurerm_api_management_group_user :
  ?id:string prop ->
  ?timeouts:azurerm_api_management_group_user__timeouts ->
  api_management_name:string prop ->
  group_name:string prop ->
  resource_group_name:string prop ->
  user_id:string prop ->
  string ->
  unit
