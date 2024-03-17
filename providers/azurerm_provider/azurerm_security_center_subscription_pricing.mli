(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_subscription_pricing__extension
type azurerm_security_center_subscription_pricing__timeouts
type azurerm_security_center_subscription_pricing

val azurerm_security_center_subscription_pricing :
  ?id:string prop ->
  ?resource_type:string prop ->
  ?subplan:string prop ->
  ?timeouts:azurerm_security_center_subscription_pricing__timeouts ->
  tier:string prop ->
  extension:
    azurerm_security_center_subscription_pricing__extension list ->
  string ->
  unit
