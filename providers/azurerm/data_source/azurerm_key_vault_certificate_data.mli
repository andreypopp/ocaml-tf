(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_certificate_data

val azurerm_key_vault_certificate_data :
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_key_vault_certificate_data

val yojson_of_azurerm_key_vault_certificate_data :
  azurerm_key_vault_certificate_data -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificates_count : float prop;
  expires : string prop;
  hex : string prop;
  id : string prop;
  key : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before : string prop;
  pem : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
