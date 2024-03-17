(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_protection_container__timeouts
type azurerm_site_recovery_protection_container

val azurerm_site_recovery_protection_container :
  ?timeouts:azurerm_site_recovery_protection_container__timeouts ->
  name:string ->
  recovery_fabric_name:string ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  string ->
  unit
