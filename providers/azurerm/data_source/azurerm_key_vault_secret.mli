(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_secret

val azurerm_key_vault_secret :
  ?id:string prop ->
  ?version:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_key_vault_secret

val yojson_of_azurerm_key_vault_secret :
  azurerm_key_vault_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  content_type : string prop;
  expiration_date : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before_date : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : (string * string) list prop;
  value : string prop;
  version : string prop;
  versionless_id : string prop;
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
