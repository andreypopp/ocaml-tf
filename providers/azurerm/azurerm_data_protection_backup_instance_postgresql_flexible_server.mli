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

type azurerm_data_protection_backup_instance_postgresql_flexible_server

val azurerm_data_protection_backup_instance_postgresql_flexible_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  location:string prop ->
  name:string prop ->
  server_id:string prop ->
  vault_id:string prop ->
  unit ->
  azurerm_data_protection_backup_instance_postgresql_flexible_server

val yojson_of_azurerm_data_protection_backup_instance_postgresql_flexible_server :
  azurerm_data_protection_backup_instance_postgresql_flexible_server ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_policy_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  server_id : string prop;
  vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  location:string prop ->
  name:string prop ->
  server_id:string prop ->
  vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  location:string prop ->
  name:string prop ->
  server_id:string prop ->
  vault_id:string prop ->
  string ->
  t Tf_core.resource
