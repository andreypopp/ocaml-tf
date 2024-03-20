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

type azurerm_spring_cloud_certificate

val azurerm_spring_cloud_certificate :
  ?certificate_content:string prop ->
  ?exclude_private_key:bool prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  unit ->
  azurerm_spring_cloud_certificate

val yojson_of_azurerm_spring_cloud_certificate :
  azurerm_spring_cloud_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_content : string prop;
  exclude_private_key : bool prop;
  id : string prop;
  key_vault_certificate_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  thumbprint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_content:string prop ->
  ?exclude_private_key:bool prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  string ->
  t

val make :
  ?certificate_content:string prop ->
  ?exclude_private_key:bool prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  string ->
  t Tf_core.resource
