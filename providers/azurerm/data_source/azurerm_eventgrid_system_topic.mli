(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;  (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_eventgrid_system_topic

val azurerm_eventgrid_system_topic :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventgrid_system_topic

val yojson_of_azurerm_eventgrid_system_topic :
  azurerm_eventgrid_system_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  metric_arm_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_arm_resource_id : string prop;
  tags : (string * string) list prop;
  topic_type : string prop;
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
