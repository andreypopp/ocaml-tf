(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_dsc_nodeconfiguration__timeouts
type azurerm_automation_dsc_nodeconfiguration

val azurerm_automation_dsc_nodeconfiguration :
  ?id:string prop ->
  ?timeouts:azurerm_automation_dsc_nodeconfiguration__timeouts ->
  automation_account_name:string prop ->
  content_embedded:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
