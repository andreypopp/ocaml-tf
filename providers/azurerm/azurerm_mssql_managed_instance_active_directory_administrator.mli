(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance_active_directory_administrator__timeouts

type azurerm_mssql_managed_instance_active_directory_administrator

type t = private {
  azuread_authentication_only : bool prop;
  id : string prop;
  login_username : string prop;
  managed_instance_id : string prop;
  object_id : string prop;
  tenant_id : string prop;
}

val azurerm_mssql_managed_instance_active_directory_administrator :
  ?azuread_authentication_only:bool prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_mssql_managed_instance_active_directory_administrator__timeouts ->
  login_username:string prop ->
  managed_instance_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  string ->
  t
