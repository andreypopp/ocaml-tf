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

type azurerm_subscription

val azurerm_subscription :
  ?alias:string prop ->
  ?billing_scope_id:string prop ->
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?tags:(string * string prop) list ->
  ?workload:string prop ->
  ?timeouts:timeouts ->
  subscription_name:string prop ->
  unit ->
  azurerm_subscription

val yojson_of_azurerm_subscription : azurerm_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alias : string prop;
  billing_scope_id : string prop;
  id : string prop;
  subscription_id : string prop;
  subscription_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  workload : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias:string prop ->
  ?billing_scope_id:string prop ->
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?tags:(string * string prop) list ->
  ?workload:string prop ->
  ?timeouts:timeouts ->
  subscription_name:string prop ->
  string ->
  t
