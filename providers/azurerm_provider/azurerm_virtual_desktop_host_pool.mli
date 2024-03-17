(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_host_pool__scheduled_agent_updates__schedule

type azurerm_virtual_desktop_host_pool__scheduled_agent_updates
type azurerm_virtual_desktop_host_pool__timeouts
type azurerm_virtual_desktop_host_pool

val azurerm_virtual_desktop_host_pool :
  ?custom_rdp_properties:string ->
  ?description:string ->
  ?friendly_name:string ->
  ?maximum_sessions_allowed:float ->
  ?personal_desktop_assignment_type:string ->
  ?preferred_app_group_type:string ->
  ?start_vm_on_connect:bool ->
  ?tags:(string * string) list ->
  ?validate_environment:bool ->
  ?vm_template:string ->
  ?timeouts:azurerm_virtual_desktop_host_pool__timeouts ->
  load_balancer_type:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  type_:string ->
  scheduled_agent_updates:
    azurerm_virtual_desktop_host_pool__scheduled_agent_updates list ->
  string ->
  unit
