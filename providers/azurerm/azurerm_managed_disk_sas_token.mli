(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_managed_disk_sas_token

val azurerm_managed_disk_sas_token :
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_level:string prop ->
  duration_in_seconds:float prop ->
  managed_disk_id:string prop ->
  unit ->
  azurerm_managed_disk_sas_token

val yojson_of_azurerm_managed_disk_sas_token :
  azurerm_managed_disk_sas_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_level : string prop;
  duration_in_seconds : float prop;
  id : string prop;
  managed_disk_id : string prop;
  sas_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  access_level:string prop ->
  duration_in_seconds:float prop ->
  managed_disk_id:string prop ->
  string ->
  t
