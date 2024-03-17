(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_automation__action
type azurerm_security_center_automation__source__rule_set__rule
type azurerm_security_center_automation__source__rule_set
type azurerm_security_center_automation__source
type azurerm_security_center_automation__timeouts
type azurerm_security_center_automation

val azurerm_security_center_automation :
  ?description:string ->
  ?enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_security_center_automation__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  scopes:string list ->
  action:azurerm_security_center_automation__action list ->
  source:azurerm_security_center_automation__source list ->
  string ->
  unit
