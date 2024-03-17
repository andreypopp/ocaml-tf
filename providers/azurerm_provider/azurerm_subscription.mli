(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_subscription__timeouts
type azurerm_subscription

val azurerm_subscription :
  ?billing_scope_id:string ->
  ?tags:(string * string) list ->
  ?workload:string ->
  ?timeouts:azurerm_subscription__timeouts ->
  subscription_name:string ->
  string ->
  unit
