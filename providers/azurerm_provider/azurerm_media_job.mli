(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_job__input_asset
type azurerm_media_job__output_asset
type azurerm_media_job__timeouts
type azurerm_media_job

val azurerm_media_job :
  ?description:string ->
  ?id:string ->
  ?priority:string ->
  ?timeouts:azurerm_media_job__timeouts ->
  media_services_account_name:string ->
  name:string ->
  resource_group_name:string ->
  transform_name:string ->
  input_asset:azurerm_media_job__input_asset list ->
  output_asset:azurerm_media_job__output_asset list ->
  string ->
  unit
