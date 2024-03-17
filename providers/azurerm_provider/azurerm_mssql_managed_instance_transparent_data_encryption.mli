(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance_transparent_data_encryption__timeouts

type azurerm_mssql_managed_instance_transparent_data_encryption

val azurerm_mssql_managed_instance_transparent_data_encryption :
  ?auto_rotation_enabled:bool prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?timeouts:
    azurerm_mssql_managed_instance_transparent_data_encryption__timeouts ->
  managed_instance_id:string prop ->
  string ->
  unit
