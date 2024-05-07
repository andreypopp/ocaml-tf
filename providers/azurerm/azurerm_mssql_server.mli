(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azuread_administrator

val azuread_administrator :
  ?azuread_authentication_only:bool prop ->
  ?tenant_id:string prop ->
  login_username:string prop ->
  object_id:string prop ->
  unit ->
  azuread_administrator

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
  ?azuread_administrator:azuread_administrator list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  unit ->
  azurerm_mssql_server

val yojson_of_azurerm_mssql_server : azurerm_mssql_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  administrator_login_password : string prop;
  connection_policy : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  outbound_network_restriction_enabled : bool prop;
  primary_user_assigned_identity_id : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restorable_dropped_database_ids : string list prop;
  tags : (string * string) list prop;
  transparent_data_encryption_key_vault_key_id : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?azuread_administrator:azuread_administrator list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  string ->
  t

val make :
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
  ?azuread_administrator:azuread_administrator list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
