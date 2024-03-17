(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_media_job__input_asset
type azurerm_media_job__output_asset
type azurerm_media_job__timeouts
type azurerm_media_job

type t = private {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  priority : string prop;
  resource_group_name : string prop;
  transform_name : string prop;
}

val azurerm_media_job :
  ?description:string prop ->
  ?id:string prop ->
  ?priority:string prop ->
  ?timeouts:azurerm_media_job__timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transform_name:string prop ->
  input_asset:azurerm_media_job__input_asset list ->
  output_asset:azurerm_media_job__output_asset list ->
  string ->
  t
