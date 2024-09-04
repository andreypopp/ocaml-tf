(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificates = {
  enabled : bool prop;  (** enabled *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  tags : string prop Tf_core.assoc;  (** tags *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_certificates

val azurerm_key_vault_certificates :
  ?id:string prop ->
  ?include_pending:bool prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  unit ->
  azurerm_key_vault_certificates

val yojson_of_azurerm_key_vault_certificates :
  azurerm_key_vault_certificates -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificates : certificates list prop;
  id : string prop;
  include_pending : bool prop;
  key_vault_id : string prop;
  names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_pending:bool prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_pending:bool prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  string ->
  t Tf_core.resource
