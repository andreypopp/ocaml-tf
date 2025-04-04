(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type contact

val contact :
  ?name:string prop ->
  ?phone:string prop ->
  email:string prop ->
  unit ->
  contact

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_certificate_contacts

val azurerm_key_vault_certificate_contacts :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  contact:contact list ->
  unit ->
  azurerm_key_vault_certificate_contacts

val yojson_of_azurerm_key_vault_certificate_contacts :
  azurerm_key_vault_certificate_contacts -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key_vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  contact:contact list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  contact:contact list ->
  string ->
  t Tf_core.resource
