(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_certificate_issuer__admin
type azurerm_key_vault_certificate_issuer__timeouts
type azurerm_key_vault_certificate_issuer

type t = private {
  account_id : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop;
  password : string prop;
  provider_name : string prop;
}

val azurerm_key_vault_certificate_issuer :
  ?account_id:string prop ->
  ?id:string prop ->
  ?org_id:string prop ->
  ?password:string prop ->
  ?timeouts:azurerm_key_vault_certificate_issuer__timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  provider_name:string prop ->
  admin:azurerm_key_vault_certificate_issuer__admin list ->
  string ->
  t
