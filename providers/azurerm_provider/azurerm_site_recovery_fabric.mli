(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_fabric__timeouts
type azurerm_site_recovery_fabric

val azurerm_site_recovery_fabric :
  ?id:string ->
  ?timeouts:azurerm_site_recovery_fabric__timeouts ->
  location:string ->
  name:string ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  string ->
  unit
