(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type correlation_filter

val correlation_filter :
  ?content_type:string prop ->
  ?correlation_id:string prop ->
  ?label:string prop ->
  ?message_id:string prop ->
  ?properties:(string * string prop) list ->
  ?reply_to:string prop ->
  ?reply_to_session_id:string prop ->
  ?session_id:string prop ->
  ?to_:string prop ->
  unit ->
  correlation_filter

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_servicebus_subscription_rule

val azurerm_servicebus_subscription_rule :
  ?action:string prop ->
  ?id:string prop ->
  ?sql_filter:string prop ->
  ?timeouts:timeouts ->
  filter_type:string prop ->
  name:string prop ->
  subscription_id:string prop ->
  correlation_filter:correlation_filter list ->
  unit ->
  azurerm_servicebus_subscription_rule

val yojson_of_azurerm_servicebus_subscription_rule :
  azurerm_servicebus_subscription_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  filter_type : string prop;
  id : string prop;
  name : string prop;
  sql_filter : string prop;
  sql_filter_compatibility_level : float prop;
  subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?action:string prop ->
  ?id:string prop ->
  ?sql_filter:string prop ->
  ?timeouts:timeouts ->
  filter_type:string prop ->
  name:string prop ->
  subscription_id:string prop ->
  correlation_filter:correlation_filter list ->
  string ->
  t

val make :
  ?action:string prop ->
  ?id:string prop ->
  ?sql_filter:string prop ->
  ?timeouts:timeouts ->
  filter_type:string prop ->
  name:string prop ->
  subscription_id:string prop ->
  correlation_filter:correlation_filter list ->
  string ->
  t Tf_core.resource
