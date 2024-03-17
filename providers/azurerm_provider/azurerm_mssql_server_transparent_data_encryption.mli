(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_transparent_data_encryption__timeouts
type azurerm_mssql_server_transparent_data_encryption

val azurerm_mssql_server_transparent_data_encryption :
  ?auto_rotation_enabled:bool ->
  ?key_vault_key_id:string ->
  ?timeouts:
    azurerm_mssql_server_transparent_data_encryption__timeouts ->
  server_id:string ->
  string ->
  unit
