(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_managed_instance_active_directory_administrator

val azurerm_mssql_managed_instance_active_directory_administrator :
  ?azuread_authentication_only:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  login_username:string prop ->
  managed_instance_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_mssql_managed_instance_active_directory_administrator

val yojson_of_azurerm_mssql_managed_instance_active_directory_administrator :
  azurerm_mssql_managed_instance_active_directory_administrator ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  azuread_authentication_only : bool prop;
  id : string prop;
  login_username : string prop;
  managed_instance_id : string prop;
  object_id : string prop;
  tenant_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?azuread_authentication_only:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  login_username:string prop ->
  managed_instance_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  string ->
  t

val make :
  ?azuread_authentication_only:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  login_username:string prop ->
  managed_instance_id:string prop ->
  object_id:string prop ->
  tenant_id:string prop ->
  string ->
  t Tf_core.resource
