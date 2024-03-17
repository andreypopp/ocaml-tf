(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_database_migration_project__timeouts
type azurerm_database_migration_project

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  source_platform : string prop;
  tags : (string * string) list prop;
  target_platform : string prop;
}

val azurerm_database_migration_project :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_database_migration_project__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  source_platform:string prop ->
  target_platform:string prop ->
  string ->
  t
