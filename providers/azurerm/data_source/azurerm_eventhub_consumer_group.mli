(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_eventhub_consumer_group

val azurerm_eventhub_consumer_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventhub_consumer_group

val yojson_of_azurerm_eventhub_consumer_group :
  azurerm_eventhub_consumer_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  eventhub_name : string prop;
  id : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  eventhub_name:string prop ->
  name:string prop ->
  namespace_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
