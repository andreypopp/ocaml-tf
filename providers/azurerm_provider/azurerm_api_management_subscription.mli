(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_subscription__timeouts
type azurerm_api_management_subscription

val azurerm_api_management_subscription :
  ?allow_tracing:bool prop ->
  ?api_id:string prop ->
  ?id:string prop ->
  ?primary_key:string prop ->
  ?product_id:string prop ->
  ?secondary_key:string prop ->
  ?state:string prop ->
  ?subscription_id:string prop ->
  ?user_id:string prop ->
  ?timeouts:azurerm_api_management_subscription__timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
