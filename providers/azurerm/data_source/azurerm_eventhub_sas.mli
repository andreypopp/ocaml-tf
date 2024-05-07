(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_eventhub_sas

val azurerm_eventhub_sas :
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  expiry:string prop ->
  unit ->
  azurerm_eventhub_sas

val yojson_of_azurerm_eventhub_sas : azurerm_eventhub_sas -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_string : string prop;
  expiry : string prop;
  id : string prop;
  sas : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  expiry:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  expiry:string prop ->
  string ->
  t Tf_core.resource
