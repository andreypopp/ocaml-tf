(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet_network_security_group_association__timeouts
type azurerm_subnet_network_security_group_association

type t = private {
  id : string prop;
  network_security_group_id : string prop;
  subnet_id : string prop;
}

val azurerm_subnet_network_security_group_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_subnet_network_security_group_association__timeouts ->
  network_security_group_id:string prop ->
  subnet_id:string prop ->
  string ->
  t
