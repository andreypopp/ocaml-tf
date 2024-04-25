(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type admin

val admin :
  ?first_name:string prop ->
  ?last_name:string prop ->
  ?phone:string prop ->
  email_address:string prop ->
  unit ->
  admin

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_certificate_issuer

val azurerm_key_vault_certificate_issuer :
  ?account_id:string prop ->
  ?id:string prop ->
  ?org_id:string prop ->
  ?password:string prop ->
  ?admin:admin list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  provider_name:string prop ->
  unit ->
  azurerm_key_vault_certificate_issuer

val yojson_of_azurerm_key_vault_certificate_issuer :
  azurerm_key_vault_certificate_issuer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop;
  password : string prop;
  provider_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?org_id:string prop ->
  ?password:string prop ->
  ?admin:admin list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  provider_name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?org_id:string prop ->
  ?password:string prop ->
  ?admin:admin list ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  provider_name:string prop ->
  string ->
  t Tf_core.resource
