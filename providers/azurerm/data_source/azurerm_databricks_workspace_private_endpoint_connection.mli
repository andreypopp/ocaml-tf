(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type connections = {
  action_required : string prop;  (** action_required *)
  description : string prop;  (** description *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  workspace_private_endpoint_id : string prop;
      (** workspace_private_endpoint_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_databricks_workspace_private_endpoint_connection

val azurerm_databricks_workspace_private_endpoint_connection :
  ?id:string prop ->
  ?timeouts:timeouts ->
  private_endpoint_id:string prop ->
  workspace_id:string prop ->
  unit ->
  azurerm_databricks_workspace_private_endpoint_connection

val yojson_of_azurerm_databricks_workspace_private_endpoint_connection :
  azurerm_databricks_workspace_private_endpoint_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  connections : connections list prop;
  id : string prop;
  private_endpoint_id : string prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  private_endpoint_id:string prop ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  private_endpoint_id:string prop ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
