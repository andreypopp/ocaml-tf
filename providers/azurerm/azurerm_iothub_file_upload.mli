(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iothub_file_upload

val azurerm_iothub_file_upload :
  ?authentication_type:string prop ->
  ?default_ttl:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?notifications_enabled:bool prop ->
  ?sas_ttl:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  container_name:string prop ->
  iothub_id:string prop ->
  unit ->
  azurerm_iothub_file_upload

val yojson_of_azurerm_iothub_file_upload :
  azurerm_iothub_file_upload -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authentication_type : string prop;
  connection_string : string prop;
  container_name : string prop;
  default_ttl : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  lock_duration : string prop;
  max_delivery_count : float prop;
  notifications_enabled : bool prop;
  sas_ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_type:string prop ->
  ?default_ttl:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?notifications_enabled:bool prop ->
  ?sas_ttl:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  container_name:string prop ->
  iothub_id:string prop ->
  string ->
  t

val make :
  ?authentication_type:string prop ->
  ?default_ttl:string prop ->
  ?id:string prop ->
  ?identity_id:string prop ->
  ?lock_duration:string prop ->
  ?max_delivery_count:float prop ->
  ?notifications_enabled:bool prop ->
  ?sas_ttl:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  container_name:string prop ->
  iothub_id:string prop ->
  string ->
  t Tf_core.resource
