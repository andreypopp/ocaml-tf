(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_settings__key_encryption_key = {
  key_url : string prop;  (** key_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}

type encryption_settings__disk_encryption_key = {
  secret_url : string prop;  (** secret_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}

type encryption_settings = {
  disk_encryption_key :
    encryption_settings__disk_encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
      (** disk_encryption_key *)
  enabled : bool prop;  (** enabled *)
  key_encryption_key : encryption_settings__key_encryption_key list;
      [@default []] [@yojson_drop_default ( = )]
      (** key_encryption_key *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_snapshot

val azurerm_snapshot :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_snapshot

val yojson_of_azurerm_snapshot : azurerm_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_option : string prop;
  disk_size_gb : float prop;
  encryption_settings : encryption_settings list prop;
  id : string prop;
  name : string prop;
  os_type : string prop;
  resource_group_name : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  time_created : string prop;
  trusted_launch_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
