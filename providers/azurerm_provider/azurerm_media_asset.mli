(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_asset__timeouts
type azurerm_media_asset

val azurerm_media_asset :
  ?alternate_id:string prop ->
  ?container:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?storage_account_name:string prop ->
  ?timeouts:azurerm_media_asset__timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
