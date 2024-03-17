(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventgrid_system_topic__identity
type azurerm_eventgrid_system_topic__timeouts
type azurerm_eventgrid_system_topic

type t = private {
  id : string prop;
  location : string prop;
  metric_arm_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_arm_resource_id : string prop;
  tags : (string * string) list prop;
  topic_type : string prop;
}

val azurerm_eventgrid_system_topic :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_eventgrid_system_topic__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  source_arm_resource_id:string prop ->
  topic_type:string prop ->
  identity:azurerm_eventgrid_system_topic__identity list ->
  string ->
  t
