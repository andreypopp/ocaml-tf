(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_marketplace_agreement

val azurerm_marketplace_agreement :
  ?id:string prop ->
  ?timeouts:timeouts ->
  offer:string prop ->
  plan:string prop ->
  publisher:string prop ->
  unit ->
  azurerm_marketplace_agreement

val yojson_of_azurerm_marketplace_agreement :
  azurerm_marketplace_agreement -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  license_text_link : string prop;
  offer : string prop;
  plan : string prop;
  privacy_policy_link : string prop;
  publisher : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  offer:string prop ->
  plan:string prop ->
  publisher:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  offer:string prop ->
  plan:string prop ->
  publisher:string prop ->
  string ->
  t Tf_core.resource
