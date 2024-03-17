(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stack_hci_cluster__identity
type azurerm_stack_hci_cluster__timeouts
type azurerm_stack_hci_cluster

val azurerm_stack_hci_cluster :
  ?automanage_configuration_id:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tenant_id:string ->
  ?timeouts:azurerm_stack_hci_cluster__timeouts ->
  client_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_stack_hci_cluster__identity list ->
  string ->
  unit
