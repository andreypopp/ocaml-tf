(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_key_vault_key

val azurerm_key_vault_key :
  ?id:string prop ->
  ?timeouts:timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_key_vault_key

val yojson_of_azurerm_key_vault_key : azurerm_key_vault_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  curve : string prop;
  e : string prop;
  id : string prop;
  key_opts : string list prop;
  key_size : float prop;
  key_type : string prop;
  key_vault_id : string prop;
  n : string prop;
  name : string prop;
  public_key_openssh : string prop;
  public_key_pem : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
  versionless_id : string prop;
  x : string prop;
  y : string prop;
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
