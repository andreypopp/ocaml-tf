(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_lab_service_plan__default_auto_shutdown
type azurerm_lab_service_plan__default_connection
type azurerm_lab_service_plan__support
type azurerm_lab_service_plan__timeouts
type azurerm_lab_service_plan

val azurerm_lab_service_plan :
  ?default_network_subnet_id:string ->
  ?id:string ->
  ?shared_gallery_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_lab_service_plan__timeouts ->
  allowed_regions:string list ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  default_auto_shutdown:
    azurerm_lab_service_plan__default_auto_shutdown list ->
  default_connection:
    azurerm_lab_service_plan__default_connection list ->
  support:azurerm_lab_service_plan__support list ->
  string ->
  unit
