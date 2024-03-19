(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_managed_instance_transparent_data_encryption

val azurerm_mssql_managed_instance_transparent_data_encryption :
  ?auto_rotation_enabled:bool prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?timeouts:timeouts ->
  managed_instance_id:string prop ->
  unit ->
  azurerm_mssql_managed_instance_transparent_data_encryption

val yojson_of_azurerm_mssql_managed_instance_transparent_data_encryption :
  azurerm_mssql_managed_instance_transparent_data_encryption -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_rotation_enabled : bool prop;
  id : string prop;
  key_vault_key_id : string prop;
  managed_instance_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_rotation_enabled:bool prop ->
  ?id:string prop ->
  ?key_vault_key_id:string prop ->
  ?timeouts:timeouts ->
  managed_instance_id:string prop ->
  string ->
  t
