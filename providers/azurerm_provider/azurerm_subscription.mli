(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription__timeouts
type azurerm_subscription

val azurerm_subscription :
  ?alias:string prop ->
  ?billing_scope_id:string prop ->
  ?id:string prop ->
  ?subscription_id:string prop ->
  ?tags:(string * string prop) list ->
  ?workload:string prop ->
  ?timeouts:azurerm_subscription__timeouts ->
  subscription_name:string prop ->
  string ->
  unit
