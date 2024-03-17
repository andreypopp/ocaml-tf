(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_managed_application__plan
type azurerm_managed_application__timeouts
type azurerm_managed_application

val azurerm_managed_application :
  ?application_definition_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_managed_application__timeouts ->
  kind:string ->
  location:string ->
  managed_resource_group_name:string ->
  name:string ->
  resource_group_name:string ->
  plan:azurerm_managed_application__plan list ->
  string ->
  unit
