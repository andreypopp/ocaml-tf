(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_subscription_template_deployment

val azurerm_subscription_template_deployment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  azurerm_subscription_template_deployment

val yojson_of_azurerm_subscription_template_deployment :
  azurerm_subscription_template_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  output_content : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
