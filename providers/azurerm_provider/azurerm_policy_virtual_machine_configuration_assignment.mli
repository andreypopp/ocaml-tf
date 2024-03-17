(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_policy_virtual_machine_configuration_assignment__configuration__parameter

type azurerm_policy_virtual_machine_configuration_assignment__configuration

type azurerm_policy_virtual_machine_configuration_assignment__timeouts
type azurerm_policy_virtual_machine_configuration_assignment

val azurerm_policy_virtual_machine_configuration_assignment :
  ?id:string ->
  ?timeouts:
    azurerm_policy_virtual_machine_configuration_assignment__timeouts ->
  location:string ->
  name:string ->
  virtual_machine_id:string ->
  configuration:
    azurerm_policy_virtual_machine_configuration_assignment__configuration
    list ->
  string ->
  unit
