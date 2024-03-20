(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accounts__restorable_locations = {
  creation_time : string prop;  (** creation_time *)
  deletion_time : string prop;  (** deletion_time *)
  location : string prop;  (** location *)
  regional_database_account_instance_id : string prop;
      (** regional_database_account_instance_id *)
}

type accounts = {
  api_type : string prop;  (** api_type *)
  creation_time : string prop;  (** creation_time *)
  deletion_time : string prop;  (** deletion_time *)
  id : string prop;  (** id *)
  restorable_locations : accounts__restorable_locations list;
      (** restorable_locations *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cosmosdb_restorable_database_accounts

val azurerm_cosmosdb_restorable_database_accounts :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  azurerm_cosmosdb_restorable_database_accounts

val yojson_of_azurerm_cosmosdb_restorable_database_accounts :
  azurerm_cosmosdb_restorable_database_accounts -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accounts : accounts list prop;
  id : string prop;
  location : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
