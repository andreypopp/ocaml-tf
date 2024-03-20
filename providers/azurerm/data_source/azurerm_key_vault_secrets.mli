(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secrets = {
  enabled : bool prop;  (** enabled *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list;  (** tags *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_secrets

val azurerm_key_vault_secrets :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  unit ->
  azurerm_key_vault_secrets

val yojson_of_azurerm_key_vault_secrets :
  azurerm_key_vault_secrets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  key_vault_id : string prop;
  names : string list prop;
  secrets : secrets list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  string ->
  t Tf_core.resource
