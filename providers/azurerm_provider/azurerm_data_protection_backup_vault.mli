(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_vault__identity
type azurerm_data_protection_backup_vault__timeouts
type azurerm_data_protection_backup_vault

type t = private {
  datastore_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  redundancy : string prop;
  resource_group_name : string prop;
  retention_duration_in_days : float prop;
  soft_delete : string prop;
  tags : (string * string) list prop;
}

val azurerm_data_protection_backup_vault :
  ?id:string prop ->
  ?retention_duration_in_days:float prop ->
  ?soft_delete:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_data_protection_backup_vault__timeouts ->
  datastore_type:string prop ->
  location:string prop ->
  name:string prop ->
  redundancy:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_data_protection_backup_vault__identity list ->
  string ->
  t
