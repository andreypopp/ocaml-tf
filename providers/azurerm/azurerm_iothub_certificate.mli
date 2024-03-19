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

type azurerm_iothub_certificate

val azurerm_iothub_certificate :
  ?id:string prop ->
  ?is_verified:bool prop ->
  ?timeouts:timeouts ->
  certificate_content:string prop ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_iothub_certificate

val yojson_of_azurerm_iothub_certificate :
  azurerm_iothub_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate_content : string prop;
  id : string prop;
  iothub_name : string prop;
  is_verified : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_verified:bool prop ->
  ?timeouts:timeouts ->
  certificate_content:string prop ->
  iothub_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
