(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity

val identity : type_:string prop -> unit -> identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_protection_backup_vault

val azurerm_data_protection_backup_vault :
  ?id:string prop ->
  ?retention_duration_in_days:float prop ->
  ?soft_delete:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  datastore_type:string prop ->
  location:string prop ->
  name:string prop ->
  redundancy:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  unit ->
  azurerm_data_protection_backup_vault

val yojson_of_azurerm_data_protection_backup_vault :
  azurerm_data_protection_backup_vault -> json

(** RESOURCE REGISTRATION *)

type t = private {
  datastore_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  redundancy : string prop;
  resource_group_name : string prop;
  retention_duration_in_days : float prop;
  soft_delete : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?retention_duration_in_days:float prop ->
  ?soft_delete:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  datastore_type:string prop ->
  location:string prop ->
  name:string prop ->
  redundancy:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  string ->
  t
