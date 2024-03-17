(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_policy_virtual_machine_configuration_assignment__configuration__parameter

type azurerm_policy_virtual_machine_configuration_assignment__configuration

type azurerm_policy_virtual_machine_configuration_assignment__timeouts
type azurerm_policy_virtual_machine_configuration_assignment

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  virtual_machine_id : string prop;
}

val azurerm_policy_virtual_machine_configuration_assignment :
  ?id:string prop ->
  ?timeouts:
    azurerm_policy_virtual_machine_configuration_assignment__timeouts ->
  location:string prop ->
  name:string prop ->
  virtual_machine_id:string prop ->
  configuration:
    azurerm_policy_virtual_machine_configuration_assignment__configuration
    list ->
  string ->
  t
