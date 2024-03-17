(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_eventgrid_system_topic__identity
type azurerm_eventgrid_system_topic__timeouts
type azurerm_eventgrid_system_topic

val azurerm_eventgrid_system_topic :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_eventgrid_system_topic__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  source_arm_resource_id:string ->
  topic_type:string ->
  identity:azurerm_eventgrid_system_topic__identity list ->
  string ->
  unit
