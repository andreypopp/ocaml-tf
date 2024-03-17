(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_account__identity
type azurerm_data_share_account__timeouts
type azurerm_data_share_account

val azurerm_data_share_account :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_data_share_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_data_share_account__identity list ->
  string ->
  unit
