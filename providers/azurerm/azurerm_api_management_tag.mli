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

type azurerm_api_management_tag

val azurerm_api_management_tag :
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_api_management_tag

val yojson_of_azurerm_api_management_tag :
  azurerm_api_management_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_management_id : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  string ->
  t
