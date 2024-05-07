(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_application_insights

val azurerm_application_insights :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_application_insights

val yojson_of_azurerm_application_insights :
  azurerm_application_insights -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  application_type : string prop;
  connection_string : string prop;
  id : string prop;
  instrumentation_key : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retention_in_days : float prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
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
