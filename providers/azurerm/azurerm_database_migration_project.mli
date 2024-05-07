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

type azurerm_database_migration_project

val azurerm_database_migration_project :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  source_platform:string prop ->
  target_platform:string prop ->
  unit ->
  azurerm_database_migration_project

val yojson_of_azurerm_database_migration_project :
  azurerm_database_migration_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  source_platform : string prop;
  tags : (string * string) list prop;
  target_platform : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  source_platform:string prop ->
  target_platform:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  service_name:string prop ->
  source_platform:string prop ->
  target_platform:string prop ->
  string ->
  t Tf_core.resource
