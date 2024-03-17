(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nat_gateway_public_ip_prefix_association__timeouts
type azurerm_nat_gateway_public_ip_prefix_association

type t = private {
  id : string prop;
  nat_gateway_id : string prop;
  public_ip_prefix_id : string prop;
}

val azurerm_nat_gateway_public_ip_prefix_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_nat_gateway_public_ip_prefix_association__timeouts ->
  nat_gateway_id:string prop ->
  public_ip_prefix_id:string prop ->
  string ->
  t
