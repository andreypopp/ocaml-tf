(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_subscription__timeouts
type azurerm_api_management_subscription

val azurerm_api_management_subscription :
  ?allow_tracing:bool ->
  ?api_id:string ->
  ?product_id:string ->
  ?state:string ->
  ?user_id:string ->
  ?timeouts:azurerm_api_management_subscription__timeouts ->
  api_management_name:string ->
  display_name:string ->
  resource_group_name:string ->
  string ->
  unit
