(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_batch_application

val azurerm_batch_application :
  ?allow_updates:bool prop ->
  ?default_version:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_batch_application

val yojson_of_azurerm_batch_application :
  azurerm_batch_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  allow_updates : bool prop;
  default_version : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_updates:bool prop ->
  ?default_version:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
