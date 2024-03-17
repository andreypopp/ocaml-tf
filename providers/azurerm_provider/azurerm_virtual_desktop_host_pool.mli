(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_host_pool__scheduled_agent_updates__schedule

type azurerm_virtual_desktop_host_pool__scheduled_agent_updates
type azurerm_virtual_desktop_host_pool__timeouts
type azurerm_virtual_desktop_host_pool

val azurerm_virtual_desktop_host_pool :
  ?custom_rdp_properties:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?maximum_sessions_allowed:float prop ->
  ?personal_desktop_assignment_type:string prop ->
  ?preferred_app_group_type:string prop ->
  ?start_vm_on_connect:bool prop ->
  ?tags:(string * string prop) list ->
  ?validate_environment:bool prop ->
  ?vm_template:string prop ->
  ?timeouts:azurerm_virtual_desktop_host_pool__timeouts ->
  load_balancer_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  scheduled_agent_updates:
    azurerm_virtual_desktop_host_pool__scheduled_agent_updates list ->
  string ->
  unit
