(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server__azuread_administrator
type azurerm_mssql_server__identity
type azurerm_mssql_server__timeouts
type azurerm_mssql_server

val azurerm_mssql_server :
  ?administrator_login:string prop ->
  ?administrator_login_password:string prop ->
  ?connection_policy:string prop ->
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?outbound_network_restriction_enabled:bool prop ->
  ?primary_user_assigned_identity_id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?transparent_data_encryption_key_vault_key_id:string prop ->
  ?timeouts:azurerm_mssql_server__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  azuread_administrator:
    azurerm_mssql_server__azuread_administrator list ->
  identity:azurerm_mssql_server__identity list ->
  string ->
  unit
