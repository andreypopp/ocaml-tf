(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_subscription_pricing__extension
type azurerm_security_center_subscription_pricing__timeouts
type azurerm_security_center_subscription_pricing

val azurerm_security_center_subscription_pricing :
  ?id:string ->
  ?resource_type:string ->
  ?subplan:string ->
  ?timeouts:azurerm_security_center_subscription_pricing__timeouts ->
  tier:string ->
  extension:
    azurerm_security_center_subscription_pricing__extension list ->
  string ->
  unit
