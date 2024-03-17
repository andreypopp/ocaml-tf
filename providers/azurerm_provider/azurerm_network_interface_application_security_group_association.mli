(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface_application_security_group_association__timeouts

type azurerm_network_interface_application_security_group_association

val azurerm_network_interface_application_security_group_association :
  ?timeouts:
    azurerm_network_interface_application_security_group_association__timeouts ->
  application_security_group_id:string ->
  network_interface_id:string ->
  string ->
  unit
