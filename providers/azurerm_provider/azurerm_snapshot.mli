(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_snapshot__encryption_settings__disk_encryption_key
type azurerm_snapshot__encryption_settings__key_encryption_key
type azurerm_snapshot__encryption_settings
type azurerm_snapshot__timeouts
type azurerm_snapshot

val azurerm_snapshot :
  ?disk_size_gb:float prop ->
  ?id:string prop ->
  ?incremental_enabled:bool prop ->
  ?source_resource_id:string prop ->
  ?source_uri:string prop ->
  ?storage_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_snapshot__timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption_settings:azurerm_snapshot__encryption_settings list ->
  string ->
  unit
