(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_group_subscription_association__timeouts
type azurerm_management_group_subscription_association

val azurerm_management_group_subscription_association :
  ?timeouts:
    azurerm_management_group_subscription_association__timeouts ->
  management_group_id:string ->
  subscription_id:string ->
  string ->
  unit
