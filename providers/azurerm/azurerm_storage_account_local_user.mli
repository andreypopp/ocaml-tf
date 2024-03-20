(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permission_scope__permissions

val permission_scope__permissions :
  ?create:bool prop ->
  ?delete:bool prop ->
  ?list_:bool prop ->
  ?read:bool prop ->
  ?write:bool prop ->
  unit ->
  permission_scope__permissions

type permission_scope

val permission_scope :
  resource_name:string prop ->
  service:string prop ->
  permissions:permission_scope__permissions list ->
  unit ->
  permission_scope

type ssh_authorized_key

val ssh_authorized_key :
  ?description:string prop ->
  key:string prop ->
  unit ->
  ssh_authorized_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_account_local_user

val azurerm_storage_account_local_user :
  ?home_directory:string prop ->
  ?id:string prop ->
  ?ssh_key_enabled:bool prop ->
  ?ssh_password_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  permission_scope:permission_scope list ->
  ssh_authorized_key:ssh_authorized_key list ->
  unit ->
  azurerm_storage_account_local_user

val yojson_of_azurerm_storage_account_local_user :
  azurerm_storage_account_local_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  home_directory : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  sid : string prop;
  ssh_key_enabled : bool prop;
  ssh_password_enabled : bool prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?home_directory:string prop ->
  ?id:string prop ->
  ?ssh_key_enabled:bool prop ->
  ?ssh_password_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  permission_scope:permission_scope list ->
  ssh_authorized_key:ssh_authorized_key list ->
  string ->
  t

val make :
  ?home_directory:string prop ->
  ?id:string prop ->
  ?ssh_key_enabled:bool prop ->
  ?ssh_password_enabled:bool prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  permission_scope:permission_scope list ->
  ssh_authorized_key:ssh_authorized_key list ->
  string ->
  t Tf_core.resource
