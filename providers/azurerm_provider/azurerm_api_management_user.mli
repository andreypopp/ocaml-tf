(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_user__timeouts
type azurerm_api_management_user

val azurerm_api_management_user :
  ?confirmation:string ->
  ?id:string ->
  ?note:string ->
  ?password:string ->
  ?state:string ->
  ?timeouts:azurerm_api_management_user__timeouts ->
  api_management_name:string ->
  email:string ->
  first_name:string ->
  last_name:string ->
  resource_group_name:string ->
  user_id:string ->
  string ->
  unit
