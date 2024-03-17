(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_group_subscription_association__timeouts
type azurerm_management_group_subscription_association

val azurerm_management_group_subscription_association :
  ?id:string prop ->
  ?timeouts:
    azurerm_management_group_subscription_association__timeouts ->
  management_group_id:string prop ->
  subscription_id:string prop ->
  string ->
  unit
