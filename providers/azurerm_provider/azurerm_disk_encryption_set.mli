(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_disk_encryption_set__identity
type azurerm_disk_encryption_set__timeouts
type azurerm_disk_encryption_set

val azurerm_disk_encryption_set :
  ?auto_key_rotation_enabled:bool ->
  ?encryption_type:string ->
  ?federated_client_id:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_disk_encryption_set__timeouts ->
  key_vault_key_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_disk_encryption_set__identity list ->
  string ->
  unit
