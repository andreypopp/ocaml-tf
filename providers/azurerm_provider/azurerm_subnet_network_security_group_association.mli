(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet_network_security_group_association__timeouts
type azurerm_subnet_network_security_group_association

val azurerm_subnet_network_security_group_association :
  ?id:string ->
  ?timeouts:
    azurerm_subnet_network_security_group_association__timeouts ->
  network_security_group_id:string ->
  subnet_id:string ->
  string ->
  unit
