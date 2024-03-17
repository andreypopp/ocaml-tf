(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_account__identity
type azurerm_data_share_account__timeouts
type azurerm_data_share_account

val azurerm_data_share_account :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_data_share_account__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_data_share_account__identity list ->
  string ->
  unit
