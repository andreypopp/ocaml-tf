(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_application_load_balancer_frontend

val azurerm_application_load_balancer_frontend :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  application_load_balancer_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_application_load_balancer_frontend

val yojson_of_azurerm_application_load_balancer_frontend :
  azurerm_application_load_balancer_frontend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_load_balancer_id : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  application_load_balancer_id:string prop ->
  name:string prop ->
  string ->
  t
