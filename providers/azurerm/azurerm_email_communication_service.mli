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

type azurerm_email_communication_service

val azurerm_email_communication_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_email_communication_service

val yojson_of_azurerm_email_communication_service :
  azurerm_email_communication_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  data_location : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  data_location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
