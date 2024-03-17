(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface_security_group_association__timeouts
type azurerm_network_interface_security_group_association

val azurerm_network_interface_security_group_association :
  ?id:string ->
  ?timeouts:
    azurerm_network_interface_security_group_association__timeouts ->
  network_interface_id:string ->
  network_security_group_id:string ->
  string ->
  unit
