(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_dev_tool_portal__sso
type azurerm_spring_cloud_dev_tool_portal__timeouts
type azurerm_spring_cloud_dev_tool_portal

val azurerm_spring_cloud_dev_tool_portal :
  ?application_accelerator_enabled:bool ->
  ?application_live_view_enabled:bool ->
  ?id:string ->
  ?public_network_access_enabled:bool ->
  ?timeouts:azurerm_spring_cloud_dev_tool_portal__timeouts ->
  name:string ->
  spring_cloud_service_id:string ->
  sso:azurerm_spring_cloud_dev_tool_portal__sso list ->
  string ->
  unit
