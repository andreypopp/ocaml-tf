(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_file_upload__timeouts
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
  ?timeouts:azurerm_iothub_file_upload__timeouts ->
  connection_string:string prop ->
  container_name:string prop ->
  iothub_id:string prop ->
  string ->
  unit
