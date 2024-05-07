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
      (** disk_encryption_key *)
  enabled : bool prop;  (** enabled *)
  key_encryption_key : encryption_settings__key_encryption_key list;
      (** key_encryption_key *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_managed_disk

val azurerm_managed_disk :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_managed_disk

val yojson_of_azurerm_managed_disk : azurerm_managed_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_option : string prop;
  disk_access_id : string prop;
  disk_encryption_set_id : string prop;
  disk_iops_read_write : float prop;
  disk_mbps_read_write : float prop;
  disk_size_gb : float prop;
  encryption_settings : encryption_settings list prop;
  id : string prop;
  image_reference_id : string prop;
  name : string prop;
  network_access_policy : string prop;
  os_type : string prop;
  resource_group_name : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  storage_account_type : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
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
