(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type admin = {
  email_address : string prop;  (** email_address *)
  first_name : string prop;  (** first_name *)
  last_name : string prop;  (** last_name *)
  phone : string prop;  (** phone *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_certificate_issuer

val azurerm_key_vault_certificate_issuer :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_key_vault_certificate_issuer

val yojson_of_azurerm_key_vault_certificate_issuer :
  azurerm_key_vault_certificate_issuer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  admin : admin list prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop;
  provider_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
