(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_dsc_configuration__timeouts
type azurerm_automation_dsc_configuration

val azurerm_automation_dsc_configuration :
  ?description:string ->
  ?log_verbose:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_automation_dsc_configuration__timeouts ->
  automation_account_name:string ->
  content_embedded:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
