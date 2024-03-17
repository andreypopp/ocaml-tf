(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nat_gateway_public_ip_association__timeouts
type azurerm_nat_gateway_public_ip_association

val azurerm_nat_gateway_public_ip_association :
  ?id:string prop ->
  ?timeouts:azurerm_nat_gateway_public_ip_association__timeouts ->
  nat_gateway_id:string prop ->
  public_ip_address_id:string prop ->
  string ->
  unit
