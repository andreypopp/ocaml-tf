(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_certificate__timeouts
type azurerm_spring_cloud_certificate

val azurerm_spring_cloud_certificate :
  ?certificate_content:string prop ->
  ?exclude_private_key:bool prop ->
  ?id:string prop ->
  ?key_vault_certificate_id:string prop ->
  ?timeouts:azurerm_spring_cloud_certificate__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  string ->
  unit
