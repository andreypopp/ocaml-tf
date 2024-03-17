(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_snapshot__encryption_settings__disk_encryption_key
type azurerm_snapshot__encryption_settings__key_encryption_key
type azurerm_snapshot__encryption_settings
type azurerm_snapshot__timeouts
type azurerm_snapshot

val azurerm_snapshot :
  ?incremental_enabled:bool ->
  ?source_resource_id:string ->
  ?source_uri:string ->
  ?storage_account_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_snapshot__timeouts ->
  create_option:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  encryption_settings:azurerm_snapshot__encryption_settings list ->
  string ->
  unit
