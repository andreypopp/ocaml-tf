(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet_route_table_association__timeouts
type azurerm_subnet_route_table_association

val azurerm_subnet_route_table_association :
  ?timeouts:azurerm_subnet_route_table_association__timeouts ->
  route_table_id:string ->
  subnet_id:string ->
  string ->
  unit
