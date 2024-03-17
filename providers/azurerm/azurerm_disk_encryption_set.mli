(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_encryption_set__identity
type azurerm_disk_encryption_set__timeouts
type azurerm_disk_encryption_set

type t = private {
  auto_key_rotation_enabled : bool prop;
  encryption_type : string prop;
  federated_client_id : string prop;
  id : string prop;
  key_vault_key_id : string prop;
  key_vault_key_url : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_disk_encryption_set :
  ?auto_key_rotation_enabled:bool prop ->
  ?encryption_type:string prop ->
  ?federated_client_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_disk_encryption_set__timeouts ->
  key_vault_key_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_disk_encryption_set__identity list ->
  string ->
  t
