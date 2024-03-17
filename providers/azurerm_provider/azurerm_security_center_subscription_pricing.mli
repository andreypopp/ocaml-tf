(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_subscription_pricing__extension
type azurerm_security_center_subscription_pricing__timeouts
type azurerm_security_center_subscription_pricing

type t = private {
  id : string prop;
  resource_type : string prop;
  subplan : string prop;
  tier : string prop;
}

val azurerm_security_center_subscription_pricing :
  ?id:string prop ->
  ?resource_type:string prop ->
  ?subplan:string prop ->
  ?timeouts:azurerm_security_center_subscription_pricing__timeouts ->
  tier:string prop ->
  extension:
    azurerm_security_center_subscription_pricing__extension list ->
  string ->
  t
