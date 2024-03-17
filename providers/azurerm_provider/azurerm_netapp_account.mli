(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_netapp_account__active_directory
type azurerm_netapp_account__identity
type azurerm_netapp_account__timeouts
type azurerm_netapp_account

val azurerm_netapp_account :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_netapp_account__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  active_directory:azurerm_netapp_account__active_directory list ->
  identity:azurerm_netapp_account__identity list ->
  string ->
  unit
