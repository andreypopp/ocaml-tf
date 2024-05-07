(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_source_control_token

val azurerm_source_control_token :
  ?id:string prop ->
  ?timeouts:timeouts ->
  type_:string prop ->
  unit ->
  azurerm_source_control_token

val yojson_of_azurerm_source_control_token :
  azurerm_source_control_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  token : string prop;
  token_secret : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  type_:string prop ->
  string ->
  t Tf_core.resource
