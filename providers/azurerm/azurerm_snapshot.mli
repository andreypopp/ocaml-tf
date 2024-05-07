(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_settings__disk_encryption_key

val encryption_settings__disk_encryption_key :
  secret_url:string prop ->
  source_vault_id:string prop ->
  unit ->
  encryption_settings__disk_encryption_key

type encryption_settings__key_encryption_key

val encryption_settings__key_encryption_key :
  key_url:string prop ->
  source_vault_id:string prop ->
  unit ->
  encryption_settings__key_encryption_key

type encryption_settings

val encryption_settings :
  ?enabled:bool prop ->
  ?disk_encryption_key:encryption_settings__disk_encryption_key list ->
  ?key_encryption_key:encryption_settings__key_encryption_key list ->
  unit ->
  encryption_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_snapshot

val azurerm_snapshot :
  ?disk_size_gb:float prop ->
  ?id:string prop ->
  ?incremental_enabled:bool prop ->
  ?source_resource_id:string prop ->
  ?source_uri:string prop ->
  ?storage_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?encryption_settings:encryption_settings list ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_snapshot

val yojson_of_azurerm_snapshot : azurerm_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_option : string prop;
  disk_size_gb : float prop;
  id : string prop;
  incremental_enabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  trusted_launch_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?disk_size_gb:float prop ->
  ?id:string prop ->
  ?incremental_enabled:bool prop ->
  ?source_resource_id:string prop ->
  ?source_uri:string prop ->
  ?storage_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?encryption_settings:encryption_settings list ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?disk_size_gb:float prop ->
  ?id:string prop ->
  ?incremental_enabled:bool prop ->
  ?source_resource_id:string prop ->
  ?source_uri:string prop ->
  ?storage_account_id:string prop ->
  ?tags:(string * string prop) list ->
  ?encryption_settings:encryption_settings list ->
  ?timeouts:timeouts ->
  create_option:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
