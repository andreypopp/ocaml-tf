(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet_nat_gateway_association__timeouts
type azurerm_subnet_nat_gateway_association

val azurerm_subnet_nat_gateway_association :
  ?id:string prop ->
  ?timeouts:azurerm_subnet_nat_gateway_association__timeouts ->
  nat_gateway_id:string prop ->
  subnet_id:string prop ->
  string ->
  unit
