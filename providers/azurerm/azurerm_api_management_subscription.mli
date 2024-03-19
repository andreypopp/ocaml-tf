(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_subscription

val yojson_of_azurerm_api_management_subscription :
  azurerm_api_management_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_tracing : bool prop;
  api_id : string prop;
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  primary_key : string prop;
  product_id : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  state : string prop;
  subscription_id : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_tracing:bool prop ->
  ?api_id:string prop ->
  ?id:string prop ->
  ?primary_key:string prop ->
  ?product_id:string prop ->
  ?secondary_key:string prop ->
  ?state:string prop ->
  ?subscription_id:string prop ->
  ?user_id:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
