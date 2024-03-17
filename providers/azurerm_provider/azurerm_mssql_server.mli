(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server__azuread_administrator
type azurerm_mssql_server__identity
type azurerm_mssql_server__timeouts
type azurerm_mssql_server

val azurerm_mssql_server :
  ?administrator_login:string ->
  ?administrator_login_password:string ->
  ?connection_policy:string ->
  ?id:string ->
  ?minimum_tls_version:string ->
  ?outbound_network_restriction_enabled:bool ->
  ?primary_user_assigned_identity_id:string ->
  ?public_network_access_enabled:bool ->
  ?tags:(string * string) list ->
  ?transparent_data_encryption_key_vault_key_id:string ->
  ?timeouts:azurerm_mssql_server__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  version:string ->
  azuread_administrator:
    azurerm_mssql_server__azuread_administrator list ->
  identity:azurerm_mssql_server__identity list ->
  string ->
  unit
