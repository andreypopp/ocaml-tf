(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_stack_hci_cluster__identity
type azurerm_stack_hci_cluster__timeouts
type azurerm_stack_hci_cluster

val azurerm_stack_hci_cluster :
  ?automanage_configuration_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_id:string prop ->
  ?timeouts:azurerm_stack_hci_cluster__timeouts ->
  client_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_stack_hci_cluster__identity list ->
  string ->
  unit
