(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_subnet_route_table_association

val azurerm_subnet_route_table_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_subnet_route_table_association

val yojson_of_azurerm_subnet_route_table_association :
  azurerm_subnet_route_table_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
