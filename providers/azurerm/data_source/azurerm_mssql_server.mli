(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mssql_server

val azurerm_mssql_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_mssql_server

val yojson_of_azurerm_mssql_server : azurerm_mssql_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  restorable_dropped_database_ids : string list prop;
  tags : (string * string) list prop;
  transparent_data_encryption_key_vault_key_id : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
