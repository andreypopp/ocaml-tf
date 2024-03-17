(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_transparent_data_encryption__timeouts
type azurerm_mssql_server_transparent_data_encryption

type t = private {
  auto_rotation_enabled : bool prop;
  id : string prop;
  key_vault_key_id : string prop;
  server_id : string prop;
}

val azurerm_mssql_server_transparent_data_encryption :
  ?auto_rotation_enabled:bool prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?timeouts:
    azurerm_mssql_server_transparent_data_encryption__timeouts ->
  server_id:string prop ->
  string ->
  t
