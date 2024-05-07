(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed_disk_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type storage_account_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_databricks_workspace

val azurerm_databricks_workspace :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_databricks_workspace

val yojson_of_azurerm_databricks_workspace :
  azurerm_databricks_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  managed_disk_identity : managed_disk_identity list prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  storage_account_identity : storage_account_identity list prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
  workspace_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
