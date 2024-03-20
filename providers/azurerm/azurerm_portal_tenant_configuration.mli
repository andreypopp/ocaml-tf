(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_portal_tenant_configuration

val azurerm_portal_tenant_configuration :
  ?id:string prop ->
  ?timeouts:timeouts ->
  private_markdown_storage_enforced:bool prop ->
  unit ->
  azurerm_portal_tenant_configuration

val yojson_of_azurerm_portal_tenant_configuration :
  azurerm_portal_tenant_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  private_markdown_storage_enforced : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  private_markdown_storage_enforced:bool prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  private_markdown_storage_enforced:bool prop ->
  string ->
  t Tf_core.resource
