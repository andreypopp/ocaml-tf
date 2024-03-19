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

type azurerm_lab_service_user

val azurerm_lab_service_user :
  ?additional_usage_quota:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  email:string prop ->
  lab_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_lab_service_user

val yojson_of_azurerm_lab_service_user :
  azurerm_lab_service_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  additional_usage_quota : string prop;
  email : string prop;
  id : string prop;
  lab_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_usage_quota:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  email:string prop ->
  lab_id:string prop ->
  name:string prop ->
  string ->
  t
