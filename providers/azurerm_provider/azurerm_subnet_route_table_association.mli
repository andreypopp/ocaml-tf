(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subnet_route_table_association__timeouts
type azurerm_subnet_route_table_association

type t = private {
  id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}

val azurerm_subnet_route_table_association :
  ?id:string prop ->
  ?timeouts:azurerm_subnet_route_table_association__timeouts ->
  route_table_id:string prop ->
  subnet_id:string prop ->
  string ->
  t
