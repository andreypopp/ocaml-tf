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

type azurerm_notification_hub_authorization_rule

val azurerm_notification_hub_authorization_rule :
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  notification_hub_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_notification_hub_authorization_rule

val yojson_of_azurerm_notification_hub_authorization_rule :
  azurerm_notification_hub_authorization_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  notification_hub_name : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  send : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?listen:bool prop ->
  ?manage:bool prop ->
  ?send:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  notification_hub_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
