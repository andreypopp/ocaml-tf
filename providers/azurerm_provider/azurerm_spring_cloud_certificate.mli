(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_certificate__timeouts
type azurerm_spring_cloud_certificate

val azurerm_spring_cloud_certificate :
  ?certificate_content:string ->
  ?exclude_private_key:bool ->
  ?id:string ->
  ?key_vault_certificate_id:string ->
  ?timeouts:azurerm_spring_cloud_certificate__timeouts ->
  name:string ->
  resource_group_name:string ->
  service_name:string ->
  string ->
  unit
