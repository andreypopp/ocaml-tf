(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment_storage__timeouts
type azurerm_container_app_environment_storage

val azurerm_container_app_environment_storage :
  ?id:string prop ->
  ?timeouts:azurerm_container_app_environment_storage__timeouts ->
  access_key:string prop ->
  access_mode:string prop ->
  account_name:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  share_name:string prop ->
  string ->
  unit
