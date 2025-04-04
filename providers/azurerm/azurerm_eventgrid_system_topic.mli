(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_eventgrid_system_topic

val azurerm_eventgrid_system_topic :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  source_arm_resource_id:string prop ->
  topic_type:string prop ->
  unit ->
  azurerm_eventgrid_system_topic

val yojson_of_azurerm_eventgrid_system_topic :
  azurerm_eventgrid_system_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  metric_arm_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_arm_resource_id : string prop;
  tags : string Tf_core.assoc prop;
  topic_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  source_arm_resource_id:string prop ->
  topic_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  source_arm_resource_id:string prop ->
  topic_type:string prop ->
  string ->
  t Tf_core.resource
