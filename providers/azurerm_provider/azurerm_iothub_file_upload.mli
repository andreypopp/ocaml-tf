(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_iothub_file_upload__timeouts
type azurerm_iothub_file_upload

val azurerm_iothub_file_upload :
  ?authentication_type:string ->
  ?default_ttl:string ->
  ?identity_id:string ->
  ?lock_duration:string ->
  ?max_delivery_count:float ->
  ?notifications_enabled:bool ->
  ?sas_ttl:string ->
  ?timeouts:azurerm_iothub_file_upload__timeouts ->
  connection_string:string ->
  container_name:string ->
  iothub_id:string ->
  string ->
  unit
