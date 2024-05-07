(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_batch_certificate

val azurerm_batch_certificate :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_batch_certificate

val yojson_of_azurerm_batch_certificate :
  azurerm_batch_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
  public_data : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
  thumbprint_algorithm : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
