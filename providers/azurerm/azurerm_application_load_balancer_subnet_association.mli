(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_application_load_balancer_subnet_association

val azurerm_application_load_balancer_subnet_association :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  application_load_balancer_id:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_application_load_balancer_subnet_association

val yojson_of_azurerm_application_load_balancer_subnet_association :
  azurerm_application_load_balancer_subnet_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_load_balancer_id : string prop;
  id : string prop;
  name : string prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  application_load_balancer_id:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  application_load_balancer_id:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
