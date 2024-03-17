(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nat_gateway_public_ip_prefix_association__timeouts
type azurerm_nat_gateway_public_ip_prefix_association

val azurerm_nat_gateway_public_ip_prefix_association :
  ?timeouts:
    azurerm_nat_gateway_public_ip_prefix_association__timeouts ->
  nat_gateway_id:string ->
  public_ip_prefix_id:string ->
  string ->
  unit
