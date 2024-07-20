(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_disk_encryption_set

val azurerm_disk_encryption_set :
  ?auto_key_rotation_enabled:bool prop ->
  ?encryption_type:string prop ->
  ?federated_client_id:string prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?managed_hsm_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_disk_encryption_set

val yojson_of_azurerm_disk_encryption_set :
  azurerm_disk_encryption_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_key_rotation_enabled : bool prop;
  encryption_type : string prop;
  federated_client_id : string prop;
  id : string prop;
  key_vault_key_id : string prop;
  key_vault_key_url : string prop;
  location : string prop;
  managed_hsm_key_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_key_rotation_enabled:bool prop ->
  ?encryption_type:string prop ->
  ?federated_client_id:string prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?managed_hsm_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t

val make :
  ?auto_key_rotation_enabled:bool prop ->
  ?encryption_type:string prop ->
  ?federated_client_id:string prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?managed_hsm_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t Tf_core.resource
